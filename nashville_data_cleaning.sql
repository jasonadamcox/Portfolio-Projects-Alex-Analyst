-- Cleaning Nashville housing data

-- Standardize sales date (remove time) 

SELECT SaleDate, CONVERT(Date,SaleDate), sale_date_converted
FROM PortfolioProject..nashville_housing

UPDATE nashville_housing
SET SaleDate = CONVERT(Date, SaleDate)

ALTER TABLE nashville_housing
ADD sale_date_converted Date

UPDATE nashville_housing
SET sale_date_converted = CONVERT(Date,SaleDate)

-- Property address 

SELECT *
FROM PortfolioProject..nashville_housing
WHERE PropertyAddress IS NULL 
ORDER BY ParcelID

SELECT a.ParcelID, a.PropertyAddress, b.ParcelID, b.PropertyAddress, ISNULL(a.PropertyAddress, b.PropertyAddress) 
FROM PortfolioProject..nashville_housing a 
JOIN PortfolioProject..nashville_housing b
  ON a.ParcelID = b.ParcelID
  AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL 

UPDATE a
SET PropertyAddress = ISNULL(a.PropertyAddress, b.PropertyAddress) 
FROM PortfolioProject..nashville_housing a 
JOIN PortfolioProject..nashville_housing b
  ON a.ParcelID = b.ParcelID
  AND a.[UniqueID ] <> b.[UniqueID ]
WHERE a.PropertyAddress IS NULL 

-- Breaking out address into individual columns (address, city, state) 

SELECT 
  SUBSTRING(PropertyAddress, 1, CHARINDEX(',',PropertyAddress) - 1) AS address,
  SUBSTRING(PropertyAddress, CHARINDEX(',',PropertyAddress) + 1, LEN(PropertyAddress)) AS city
FROM 
  PortfolioProject..nashville_housing

ALTER TABLE nashville_housing
ADD PropertySplitAddress Nvarchar(255)

UPDATE nashville_housing
SET PropertySplitAddress = SUBSTRING(PropertyAddress, 1, CHARINDEX(',',PropertyAddress) - 1)

ALTER TABLE nashville_housing
ADD PropertySplitCity Nvarchar(255)

UPDATE nashville_housing
SET PropertySplitCity = SUBSTRING(PropertyAddress, CHARINDEX(',',PropertyAddress) + 1, LEN(PropertyAddress))

-- Another way to do this 

SELECT 
  OwnerAddress,  
  PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3) AS Address,
  PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2) AS City, 
  PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1) AS State 
FROM PortfolioProject..nashville_housing

ALTER TABLE nashville_housing
ADD OwnerSplitAddress Nvarchar(255)

UPDATE nashville_housing
SET OwnerSplitAddress = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 3)

ALTER TABLE nashville_housing
ADD OwnerSplitCity Nvarchar(255)

UPDATE nashville_housing
SET OwnerSplitCity = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 2)


ALTER TABLE nashville_housing
ADD OwnerSplitState Nvarchar(255)

UPDATE nashville_housing
SET OwnerSplitState = PARSENAME(REPLACE(OwnerAddress, ',', '.') , 1)

ALTER TABLE nashville_housing
DROP COLUMN OwnerSplitAddress2

SELECT *
FROM nashville_housing

-- Change Y and N to 'Yes' and 'No' in 'Sold as Vacant' 

-- See how many responses are Y/N vs. Yes/No 

SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM PortfolioProject..nashville_housing
GROUP BY SoldAsVacant
ORDER BY 2

SELECT 
  SoldAsVacant,
  CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
       WHEN SoldAsVacant = 'N' THEN 'No'
       ELSE SoldAsVacant
       END
FROM 
  PortfolioProject..nashville_housing

UPDATE nashville_housing
SET SoldAsVacant =   CASE WHEN SoldAsVacant = 'Y' THEN 'Yes'
       WHEN SoldAsVacant = 'N' THEN 'No'
       ELSE SoldAsVacant
       END

-- Check if it worked

SELECT DISTINCT(SoldAsVacant), COUNT(SoldAsVacant)
FROM PortfolioProject..nashville_housing
GROUP BY SoldAsVacant
ORDER BY 2

-- Remove duplicates 


WITH CTE AS(
  SELECT *,
  ROW_NUMBER() OVER (
  PARTITION BY ParcelID,
			   PropertyAddress,
			   SalePrice,
			   SaleDate,
			   LegalReference
			   ORDER BY
			     UniqueID
				 ) row_num 
FROM PortfolioProject..nashville_housing
)
DELETE 
FROM CTE
WHERE row_num > 1

-- Check if there are more duplicates

SELECT * 
FROM CTE
WHERE row_num > 1
-- ORDER BY PropertyAddress

-- Delete unused columns PropertyAddress, TaxDistrict, OwnerAddress

ALTER TABLE PortfolioProject..nashville_housing
DROP COLUMN OwnerAddress, TaxDistrict,PropertyAddress,

ALTER TABLE PortfolioProject..nashville_housing
DROP COLUMN SaleDate

-- Check if the columns are gone

SELECT *
FROM PortfolioProject..nashville_housing
