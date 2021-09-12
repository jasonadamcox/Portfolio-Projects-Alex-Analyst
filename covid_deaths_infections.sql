--SELECT * 
--  FROM PortfolioProject..covid_deaths
--  ORDER BY 3,4

--  --SELECT * 
  --FROM PortfolioProject..covid_vaccinations
  --ORDER BY 3,4

  SELECT 
    Location, date, total_cases, new_cases, total_deaths, population
  FROM 
    PortfolioProject..covid_deaths
  ORDER BY 1,2

-- Exploring total cases vs. total deaths 

  SELECT 
    Location, date, total_cases, total_deaths, (total_deaths/total_cases) * 100 AS case_death_ratio
  FROM 
    PortfolioProject..covid_deaths
  WHERE LOCATION LIKE '%states%'
  ORDER BY 1,2

  -- Exploring total cases vs. population

  SELECT 
    Location, date, population, total_cases, (total_cases/population) * 100 AS case_population_ratio 
  FROM 
    PortfolioProject..covid_deaths
  WHERE LOCATION LIKE '%states%'
  ORDER BY 1,2

  -- Exploring countries with highest case to population ratio 

  SELECT 
    Location, population, MAX(total_cases) AS highest_infection_count, MAX((total_cases/population)) * 100 AS max_CP_ratio 
  FROM 
    PortfolioProject..covid_deaths
  -- WHERE LOCATION LIKE '%states%'
  GROUP BY Location, population
  ORDER BY max_CP_ratio desc

-- Exploring countries with highest death count per population

 SELECT 
   Location, MAX(cast(total_deaths AS int)) AS total_death_count
 FROM 
   PortfolioProject..covid_deaths
 WHERE continent IS NOT null 
  -- WHERE LOCATION LIKE '%states%'
  GROUP BY Location
  ORDER BY total_death_count desc


-- And by continent 

 SELECT 
   continent, MAX(cast(total_deaths AS int)) AS total_death_count
 FROM 
   PortfolioProject..covid_deaths
 WHERE continent IS not null 
  -- WHERE LOCATION LIKE '%states%'
  GROUP BY continent
  ORDER BY total_death_count desc


-- Global numbers

  SELECT 
    date, SUM(new_cases) as total_cases,SUM(CAST(new_deaths AS int)) as total_deaths,SUM(CAST(new_deaths AS int))/SUM(new_cases)*100  AS death_percentage --, total_deaths, (total_deaths/total_cases) * 100 AS case_death_ratio
  FROM  
    PortfolioProject..covid_deaths
  WHERE continent IS NOT null 
  GROUP BY date
  ORDER BY 1,2

  SELECT 
    SUM(new_cases) as total_cases,SUM(CAST(new_deaths AS int)) as total_deaths,SUM(CAST(new_deaths AS int))/SUM(new_cases)*100  AS death_percentage --, total_deaths, (total_deaths/total_cases) * 100 AS case_death_ratio
  FROM  
    PortfolioProject..covid_deaths
  WHERE continent IS NOT null 
  ORDER BY 1,2

-- Looking at total population vs vaccinations

SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CAST(vac.new_vaccinations as int)) OVER (PARTITION BY dea.Location ORDER BY dea.location, dea.Date) AS rolling_people_vaccinated
FROM PortfolioProject..covid_deaths AS dea
JOIN PortfolioProject..covid_vaccinations AS vac 
  ON dea.location = vac.location 
  AND dea.date = vac.date
WHERE dea.continent IS NOT NULL 
ORDER BY 2,3

-- Looking at how many in each country are vaccinated 

-- USE CTE 

WITH pop_vs_vac (continent, location, date, population,new_vaccinations, rolling_people_vaccinated) 
AS
(
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CAST(vac.new_vaccinations as int)) OVER (PARTITION BY dea.Location ORDER BY dea.location, dea.Date) AS rolling_people_vaccinated
FROM PortfolioProject..covid_deaths AS dea
JOIN PortfolioProject..covid_vaccinations AS vac 
  ON dea.location = vac.location 
  AND dea.date = vac.date
WHERE dea.continent IS NOT NULL 
-- ORDER BY 2,3
)
SELECT *, (rolling_people_vaccinated/population) * 100 AS country_vac_rate
FROM pop_vs_vac

-- USE Temp Table

DROP TABLE IF EXISTS #percent_pop_vaccinated
CREATE TABLE #percent_pop_vaccinated
(
continent nvarchar(255), 
location nvarchar(255),
date datetime, 
population numeric,
new_vaccinations numeric, 
rolling_people_vaccinated numeric, 
) 

INSERT INTO #percent_pop_vaccinated
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CAST(vac.new_vaccinations as int)) OVER (PARTITION BY dea.Location ORDER BY dea.location, dea.Date) AS rolling_people_vaccinated
FROM PortfolioProject..covid_deaths AS dea
JOIN PortfolioProject..covid_vaccinations AS vac 
  ON dea.location = vac.location 
  AND dea.date = vac.date
WHERE dea.continent IS NOT NULL 
-- ORDER BY 2,3

SELECT *, (rolling_people_vaccinated/population) * 100 AS country_vac_rate
FROM #percent_pop_vaccinated

-- Creating view for data viz 

CREATE VIEW percent_pop_vaccinated3 AS
SELECT dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
, SUM(CONVERT(int,vac.new_vaccinations)) OVER (PARTITION BY dea.Location ORDER BY dea.location, dea.Date) AS rolling_people_vaccinated
FROM PortfolioProject..covid_deaths AS dea
JOIN PortfolioProject..covid_vaccinations AS vac 
  ON dea.location = vac.location 
  AND dea.date = vac.date
WHERE dea.continent IS NOT NULL 
-- ORDER BY 2,3