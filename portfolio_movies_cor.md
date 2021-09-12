Movies
================
Jason Cox
8/30/2021

### Reading in the data and viewing its structure

<br>

``` r
df <- read_csv('movies.csv')
```

    ## Rows: 7668 Columns: 15

    ## -- Column specification ---------------------------------------------------
    ## Delimiter: ","
    ## chr (9): name, rating, genre, released, director, writer, star, country...
    ## dbl (6): year, score, votes, budget, gross, runtime

    ## 
    ## i Use `spec()` to retrieve the full column specification for this data.
    ## i Specify the column types or set `show_col_types = FALSE` to quiet this message.

``` r
attach(df)
str(df)
```

    ## spec_tbl_df [7,668 x 15] (S3: spec_tbl_df/tbl_df/tbl/data.frame)
    ##  $ name    : chr [1:7668] "The Shining" "The Blue Lagoon" "Star Wars: Episode V - The Empire Strikes Back" "Airplane!" ...
    ##  $ rating  : chr [1:7668] "R" "R" "PG" "PG" ...
    ##  $ genre   : chr [1:7668] "Drama" "Adventure" "Action" "Comedy" ...
    ##  $ year    : num [1:7668] 1980 1980 1980 1980 1980 1980 1980 1980 1980 1980 ...
    ##  $ released: chr [1:7668] "June 13, 1980 (United States)" "July 2, 1980 (United States)" "June 20, 1980 (United States)" "July 2, 1980 (United States)" ...
    ##  $ score   : num [1:7668] 8.4 5.8 8.7 7.7 7.3 6.4 7.9 8.2 6.8 7 ...
    ##  $ votes   : num [1:7668] 927000 65000 1200000 221000 108000 123000 188000 330000 101000 10000 ...
    ##  $ director: chr [1:7668] "Stanley Kubrick" "Randal Kleiser" "Irvin Kershner" "Jim Abrahams" ...
    ##  $ writer  : chr [1:7668] "Stephen King" "Henry De Vere Stacpoole" "Leigh Brackett" "Jim Abrahams" ...
    ##  $ star    : chr [1:7668] "Jack Nicholson" "Brooke Shields" "Mark Hamill" "Robert Hays" ...
    ##  $ country : chr [1:7668] "United Kingdom" "United States" "United States" "United States" ...
    ##  $ budget  : num [1:7668] 1.9e+07 4.5e+06 1.8e+07 3.5e+06 6.0e+06 5.5e+05 2.7e+07 1.8e+07 5.4e+07 1.0e+07 ...
    ##  $ gross   : num [1:7668] 4.70e+07 5.89e+07 5.38e+08 8.35e+07 3.98e+07 ...
    ##  $ company : chr [1:7668] "Warner Bros." "Columbia Pictures" "Lucasfilm" "Paramount Pictures" ...
    ##  $ runtime : num [1:7668] 146 104 124 88 98 95 133 129 127 100 ...
    ##  - attr(*, "spec")=
    ##   .. cols(
    ##   ..   name = col_character(),
    ##   ..   rating = col_character(),
    ##   ..   genre = col_character(),
    ##   ..   year = col_double(),
    ##   ..   released = col_character(),
    ##   ..   score = col_double(),
    ##   ..   votes = col_double(),
    ##   ..   director = col_character(),
    ##   ..   writer = col_character(),
    ##   ..   star = col_character(),
    ##   ..   country = col_character(),
    ##   ..   budget = col_double(),
    ##   ..   gross = col_double(),
    ##   ..   company = col_character(),
    ##   ..   runtime = col_double()
    ##   .. )
    ##  - attr(*, "problems")=<externalptr>

``` r
head(df)
```

    ## # A tibble: 6 x 15
    ##   name    rating genre   year released   score  votes director writer star 
    ##   <chr>   <chr>  <chr>  <dbl> <chr>      <dbl>  <dbl> <chr>    <chr>  <chr>
    ## 1 The Sh~ R      Drama   1980 June 13, ~   8.4 9.27e5 Stanley~ Steph~ Jack~
    ## 2 The Bl~ R      Adven~  1980 July 2, 1~   5.8 6.5 e4 Randal ~ Henry~ Broo~
    ## 3 Star W~ PG     Action  1980 June 20, ~   8.7 1.2 e6 Irvin K~ Leigh~ Mark~
    ## 4 Airpla~ PG     Comedy  1980 July 2, 1~   7.7 2.21e5 Jim Abr~ Jim A~ Robe~
    ## 5 Caddys~ R      Comedy  1980 July 25, ~   7.3 1.08e5 Harold ~ Brian~ Chev~
    ## 6 Friday~ R      Horror  1980 May 9, 19~   6.4 1.23e5 Sean S.~ Victo~ Bets~
    ## # ... with 5 more variables: country <chr>, budget <dbl>, gross <dbl>,
    ## #   company <chr>, runtime <dbl>

``` r
dt <- df[1:5,]
kbl(dt)
```

<table>
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
The Shining
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 13, 1980 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
927000
</td>
<td style="text-align:left;">
Stanley Kubrick
</td>
<td style="text-align:left;">
Stephen King
</td>
<td style="text-align:left;">
Jack Nicholson
</td>
<td style="text-align:left;">
United Kingdom
</td>
<td style="text-align:right;">
1.9e+07
</td>
<td style="text-align:right;">
46998772
</td>
<td style="text-align:left;">
Warner Bros. 
</td>
<td style="text-align:right;">
146
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blue Lagoon
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Adventure
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
5.8
</td>
<td style="text-align:right;">
65000
</td>
<td style="text-align:left;">
Randal Kleiser
</td>
<td style="text-align:left;">
Henry De Vere Stacpoole
</td>
<td style="text-align:left;">
Brooke Shields
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
4.5e+06
</td>
<td style="text-align:right;">
58853106
</td>
<td style="text-align:left;">
Columbia Pictures
</td>
<td style="text-align:right;">
104
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode V - The Empire Strikes Back
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
8.7
</td>
<td style="text-align:right;">
1200000
</td>
<td style="text-align:left;">
Irvin Kershner
</td>
<td style="text-align:left;">
Leigh Brackett
</td>
<td style="text-align:left;">
Mark Hamill
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
538375067
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
124
</td>
</tr>
<tr>
<td style="text-align:left;">
Airplane!
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
7.7
</td>
<td style="text-align:right;">
221000
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Robert Hays
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.5e+06
</td>
<td style="text-align:right;">
83453539
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
88
</td>
</tr>
<tr>
<td style="text-align:left;">
Caddyshack
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 25, 1980 (United States)
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
108000
</td>
<td style="text-align:left;">
Harold Ramis
</td>
<td style="text-align:left;">
Brian Doyle-Murray
</td>
<td style="text-align:left;">
Chevy Chase
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
6.0e+06
</td>
<td style="text-align:right;">
39846344
</td>
<td style="text-align:left;">
Orion Pictures
</td>
<td style="text-align:right;">
98
</td>
</tr>
</tbody>
</table>

``` r
dt %>% 
  kbl() %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>% 
  scroll_box(width = "100%")
```

<div
style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
The Shining
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 13, 1980 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
927000
</td>
<td style="text-align:left;">
Stanley Kubrick
</td>
<td style="text-align:left;">
Stephen King
</td>
<td style="text-align:left;">
Jack Nicholson
</td>
<td style="text-align:left;">
United Kingdom
</td>
<td style="text-align:right;">
1.9e+07
</td>
<td style="text-align:right;">
46998772
</td>
<td style="text-align:left;">
Warner Bros. 
</td>
<td style="text-align:right;">
146
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blue Lagoon
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Adventure
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
5.8
</td>
<td style="text-align:right;">
65000
</td>
<td style="text-align:left;">
Randal Kleiser
</td>
<td style="text-align:left;">
Henry De Vere Stacpoole
</td>
<td style="text-align:left;">
Brooke Shields
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
4.5e+06
</td>
<td style="text-align:right;">
58853106
</td>
<td style="text-align:left;">
Columbia Pictures
</td>
<td style="text-align:right;">
104
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode V - The Empire Strikes Back
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
8.7
</td>
<td style="text-align:right;">
1200000
</td>
<td style="text-align:left;">
Irvin Kershner
</td>
<td style="text-align:left;">
Leigh Brackett
</td>
<td style="text-align:left;">
Mark Hamill
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
538375067
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
124
</td>
</tr>
<tr>
<td style="text-align:left;">
Airplane!
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
7.7
</td>
<td style="text-align:right;">
221000
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Robert Hays
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.5e+06
</td>
<td style="text-align:right;">
83453539
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
88
</td>
</tr>
<tr>
<td style="text-align:left;">
Caddyshack
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 25, 1980 (United States)
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
108000
</td>
<td style="text-align:left;">
Harold Ramis
</td>
<td style="text-align:left;">
Brian Doyle-Murray
</td>
<td style="text-align:left;">
Chevy Chase
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
6.0e+06
</td>
<td style="text-align:right;">
39846344
</td>
<td style="text-align:left;">
Orion Pictures
</td>
<td style="text-align:right;">
98
</td>
</tr>
</tbody>
</table>

</div>

``` r
col2 <- colorRampPalette(c("#67001F", "#B2182B", "#D6604D", "#F4A582",
                           "#FDDBC7", "#FFFFFF", "#D1E5F0", "#92C5DE",
                           "#4393C3", "#2166AC", "#053061"))
```

### See if there is missing data

<br>

``` r
ncol <- ncol(df)
ncol
```

    ## [1] 15

``` r
colnames(df[1])
```

    ## [1] "name"

``` r
sum(is.na(df))
```

    ## [1] 2473

``` r
summary(df)
```

    ##      name              rating             genre                year     
    ##  Length:7668        Length:7668        Length:7668        Min.   :1980  
    ##  Class :character   Class :character   Class :character   1st Qu.:1991  
    ##  Mode  :character   Mode  :character   Mode  :character   Median :2000  
    ##                                                           Mean   :2000  
    ##                                                           3rd Qu.:2010  
    ##                                                           Max.   :2020  
    ##                                                                         
    ##    released             score          votes           director        
    ##  Length:7668        Min.   :1.90   Min.   :      7   Length:7668       
    ##  Class :character   1st Qu.:5.80   1st Qu.:   9100   Class :character  
    ##  Mode  :character   Median :6.50   Median :  33000   Mode  :character  
    ##                     Mean   :6.39   Mean   :  88109                     
    ##                     3rd Qu.:7.10   3rd Qu.:  93000                     
    ##                     Max.   :9.30   Max.   :2400000                     
    ##                     NA's   :3      NA's   :3                           
    ##     writer              star             country         
    ##  Length:7668        Length:7668        Length:7668       
    ##  Class :character   Class :character   Class :character  
    ##  Mode  :character   Mode  :character   Mode  :character  
    ##                                                          
    ##                                                          
    ##                                                          
    ##                                                          
    ##      budget              gross             company         
    ##  Min.   :     3000   Min.   :3.090e+02   Length:7668       
    ##  1st Qu.: 10000000   1st Qu.:4.532e+06   Class :character  
    ##  Median : 20500000   Median :2.021e+07   Mode  :character  
    ##  Mean   : 35589876   Mean   :7.850e+07                     
    ##  3rd Qu.: 45000000   3rd Qu.:7.602e+07                     
    ##  Max.   :356000000   Max.   :2.847e+09                     
    ##  NA's   :2171        NA's   :189                           
    ##     runtime     
    ##  Min.   : 55.0  
    ##  1st Qu.: 95.0  
    ##  Median :104.0  
    ##  Mean   :107.3  
    ##  3rd Qu.:116.0  
    ##  Max.   :366.0  
    ##  NA's   :4

``` r
for (i in 1:ncol) {
percentage = mean(is.na(df[i])) * 100

print(paste0('percentage of missing values for ',colnames(df[i])))
print(percentage)
cat("\n")
}
```

    ## [1] "percentage of missing values for name"
    ## [1] 0
    ## 
    ## [1] "percentage of missing values for rating"
    ## [1] 1.004173
    ## 
    ## [1] "percentage of missing values for genre"
    ## [1] 0
    ## 
    ## [1] "percentage of missing values for year"
    ## [1] 0
    ## 
    ## [1] "percentage of missing values for released"
    ## [1] 0.02608242
    ## 
    ## [1] "percentage of missing values for score"
    ## [1] 0.03912363
    ## 
    ## [1] "percentage of missing values for votes"
    ## [1] 0.03912363
    ## 
    ## [1] "percentage of missing values for director"
    ## [1] 0
    ## 
    ## [1] "percentage of missing values for writer"
    ## [1] 0.03912363
    ## 
    ## [1] "percentage of missing values for star"
    ## [1] 0.01304121
    ## 
    ## [1] "percentage of missing values for country"
    ## [1] 0.03912363
    ## 
    ## [1] "percentage of missing values for budget"
    ## [1] 28.31247
    ## 
    ## [1] "percentage of missing values for gross"
    ## [1] 2.464789
    ## 
    ## [1] "percentage of missing values for company"
    ## [1] 0.2217006
    ## 
    ## [1] "percentage of missing values for runtime"
    ## [1] 0.05216484

### Pull year from released date (since there are inconsistencies in the data between year and the year within released date (Regex practice)

<br>

``` r
typeof(df['released'])
```

    ## [1] "list"

``` r
df$year_released <- sub("^.*([0-9]{4}).*", "\\1", df$released)
attach(df)
```

    ## The following objects are masked from df (pos = 3):
    ## 
    ##     budget, company, country, director, genre, gross, name,
    ##     rating, released, runtime, score, star, votes, writer, year

### Inconsistencies between year and year\_released

<br>

``` r
ifelse(year == year_released,"Yes","No")
```

    ##    [1] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##   [12] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##   [23] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##   [34] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##   [45] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ##   [56] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##   [67] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##   [78] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ##   [89] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ##  [100] "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [111] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ##  [122] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ##  [133] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [144] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [155] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ##  [166] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ##  [177] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [188] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [199] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [210] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [221] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [232] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ##  [243] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ##  [254] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [265] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [276] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [287] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [298] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [309] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [320] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [331] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [342] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [353] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [364] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [375] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ##  [386] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [397] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ##  [408] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ##  [419] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [430] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [441] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [452] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [463] "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [474] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [485] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [496] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ##  [507] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [518] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [529] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [540] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes"
    ##  [551] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [562] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [573] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [584] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [595] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [606] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [617] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No" 
    ##  [628] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ##  [639] "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [650] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [661] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [672] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [683] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [694] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [705] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [716] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [727] "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [738] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ##  [749] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ##  [760] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [771] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ##  [782] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [793] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes"
    ##  [804] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [815] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No"  "No" 
    ##  [826] "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [837] "Yes" "No"  "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ##  [848] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [859] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [870] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ##  [881] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [892] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [903] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [914] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ##  [925] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ##  [936] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ##  [947] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ##  [958] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ##  [969] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ##  [980] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ##  [991] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1002] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1013] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1024] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1035] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1046] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1057] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1068] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1079] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1090] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1101] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1112] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [1123] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1134] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1145] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1156] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1167] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1178] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1189] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1200] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No" 
    ## [1211] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1222] "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1233] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1244] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1255] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1266] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ## [1277] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1288] "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ## [1299] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1310] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1321] "No"  "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1332] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1343] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1354] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1365] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1376] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No" 
    ## [1387] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1398] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1409] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1420] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [1431] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1442] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1453] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1464] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1475] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ## [1486] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1497] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1508] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1519] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1530] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [1541] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1552] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1563] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes"
    ## [1574] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1585] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1596] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1607] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1618] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1629] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1640] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1651] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1662] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1673] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1684] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1695] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1706] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1717] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1728] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1739] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1750] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1761] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1772] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No" 
    ## [1783] "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1794] "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1805] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1816] "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1827] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1838] "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1849] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [1860] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1871] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [1882] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1893] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1904] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [1915] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [1926] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1937] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1948] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [1959] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [1970] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ## [1981] "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [1992] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2003] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2014] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2025] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2036] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2047] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2058] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2069] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2080] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2091] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2102] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2113] "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No" 
    ## [2124] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2135] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2146] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2157] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2168] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2179] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2190] "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2201] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes"
    ## [2212] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2223] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes"
    ## [2234] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes"
    ## [2245] "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2256] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2267] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2278] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2289] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2300] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2311] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [2322] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2333] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [2344] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ## [2355] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2366] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2377] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2388] "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "No" 
    ## [2399] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2410] "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2421] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [2432] "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2443] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2454] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2465] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2476] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2487] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2498] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2509] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2520] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [2531] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes"
    ## [2542] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [2553] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2564] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes"
    ## [2575] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2586] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2597] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2608] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes"
    ## [2619] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes"
    ## [2630] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2641] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2652] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [2663] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2674] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2685] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2696] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2707] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2718] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2729] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2740] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2751] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2762] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2773] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2784] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [2795] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [2806] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2817] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [2828] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "No" 
    ## [2839] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2850] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [2861] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2872] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2883] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2894] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2905] "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2916] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [2927] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2938] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [2949] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [2960] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [2971] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [2982] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [2993] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3004] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3015] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3026] "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3037] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3048] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3059] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3070] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3081] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3092] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3103] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3114] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3125] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3136] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3147] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "No" 
    ## [3158] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3169] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3180] "Yes" "No"  "No"  "Yes" "No"  "No"  "Yes" "No"  "Yes" "No"  "Yes"
    ## [3191] "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3202] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3213] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3224] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [3235] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3246] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3257] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3268] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3279] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3290] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3301] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3312] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [3323] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3334] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3345] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3356] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3367] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3378] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3389] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3400] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3411] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3422] "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "No"  "Yes"
    ## [3433] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3444] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3455] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes"
    ## [3466] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3477] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3488] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3499] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3510] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3521] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3532] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3543] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [3554] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3565] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3576] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3587] "Yes" "No"  "Yes" "No"  "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes"
    ## [3598] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3609] "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3620] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [3631] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3642] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes"
    ## [3653] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3664] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes"
    ## [3675] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3686] "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3697] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3708] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3719] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3730] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3741] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [3752] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ## [3763] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes"
    ## [3774] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [3785] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3796] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3807] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3818] "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3829] "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes"
    ## [3840] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3851] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "No" 
    ## [3862] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3873] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3884] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [3895] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3906] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3917] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3928] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3939] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [3950] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ## [3961] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [3972] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ## [3983] "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [3994] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4005] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "No" 
    ## [4016] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4027] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [4038] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4049] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4060] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4071] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4082] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4093] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No" 
    ## [4104] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4115] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4126] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4137] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4148] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4159] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4170] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4181] "Yes" "No"  "No"  "Yes" "No"  "No"  "No"  "No"  "No"  "No"  "No" 
    ## [4192] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [4203] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes" "No" 
    ## [4214] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4225] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4236] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes"
    ## [4247] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4258] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4269] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4280] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4291] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4302] "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4313] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4324] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4335] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4346] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4357] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [4368] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4379] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [4390] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4401] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4412] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes"
    ## [4423] "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4434] "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4445] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4456] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ## [4467] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4478] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4489] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4500] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4511] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [4522] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4533] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [4544] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4555] "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4566] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4577] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4588] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4599] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No" 
    ## [4610] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes"
    ## [4621] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [4632] "No"  "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4643] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No" 
    ## [4654] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4665] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4676] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4687] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4698] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4709] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes"
    ## [4720] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4731] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4742] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [4753] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4764] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [4775] "Yes" "No"  "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4786] "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4797] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4808] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4819] "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [4830] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No" 
    ## [4841] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4852] "No"  "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No" 
    ## [4863] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4874] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [4885] "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [4896] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4907] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4918] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4929] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [4940] "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4951] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes"
    ## [4962] "No"  "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [4973] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ## [4984] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [4995] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5006] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [5017] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No" 
    ## [5028] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [5039] "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5050] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5061] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5072] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5083] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5094] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5105] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [5116] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [5127] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5138] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5149] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [5160] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5171] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5182] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5193] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5204] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [5215] "Yes" "No"  "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5226] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No" 
    ## [5237] "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5248] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5259] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5270] "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5281] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5292] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5303] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5314] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5325] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5336] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5347] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5358] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5369] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5380] "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5391] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [5402] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [5413] "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5424] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [5435] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5446] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [5457] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5468] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5479] "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5490] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [5501] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5512] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5523] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5534] "No"  "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5545] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "No" 
    ## [5556] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5567] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [5578] "Yes" "No"  "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5589] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5600] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5611] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5622] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes"
    ## [5633] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes"
    ## [5644] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5655] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [5666] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5677] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5688] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5699] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5710] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5721] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" NA    "Yes" NA   
    ## [5732] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [5743] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5754] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5765] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5776] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5787] "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "No"  "No"  "Yes" "No" 
    ## [5798] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5809] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [5820] "Yes" "No"  "No"  "No"  "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes"
    ## [5831] "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "No"  "No"  "No"  "No" 
    ## [5842] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5853] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5864] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [5875] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5886] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5897] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5908] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5919] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [5930] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No" 
    ## [5941] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [5952] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [5963] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [5974] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes"
    ## [5985] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ## [5996] "Yes" "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6007] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No" 
    ## [6018] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6029] "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6040] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6051] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6062] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6073] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6084] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6095] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6106] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6117] "Yes" "Yes" "Yes" "No"  "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6128] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [6139] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6150] "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6161] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6172] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6183] "No"  "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6194] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6205] "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "No"  "No" 
    ## [6216] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes"
    ## [6227] "Yes" "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes" "Yes" "No" 
    ## [6238] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6249] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [6260] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6271] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6282] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6293] "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6304] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6315] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "No" 
    ## [6326] "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6337] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6348] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [6359] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6370] "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6381] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No" 
    ## [6392] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6403] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [6414] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6425] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "No"  "No" 
    ## [6436] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6447] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6458] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [6469] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6480] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6491] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6502] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6513] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6524] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6535] "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [6546] "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [6557] "Yes" "No"  "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [6568] "Yes" "No"  "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No" 
    ## [6579] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [6590] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6601] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6612] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes"
    ## [6623] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6634] "Yes" "No"  "No"  "Yes" "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes"
    ## [6645] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No" 
    ## [6656] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6667] "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6678] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6689] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ## [6700] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No" 
    ## [6711] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes"
    ## [6722] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [6733] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6744] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6755] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6766] "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "No" 
    ## [6777] "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6788] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6799] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6810] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [6821] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6832] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6843] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6854] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6865] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6876] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes"
    ## [6887] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6898] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6909] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6920] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [6931] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [6942] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6953] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes"
    ## [6964] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [6975] "No"  "No"  "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [6986] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [6997] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes" "Yes" "No"  "Yes"
    ## [7008] "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes"
    ## [7019] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7030] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "No"  "Yes"
    ## [7041] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7052] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7063] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [7074] "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7085] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "Yes"
    ## [7096] "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes" "Yes"
    ## [7107] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7118] "Yes" "Yes" "Yes" "No"  "Yes" "No"  "No"  "Yes" "No"  "Yes" "Yes"
    ## [7129] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [7140] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [7151] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [7162] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7173] "No"  "No"  "Yes" "No"  "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes"
    ## [7184] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7195] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7206] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [7217] "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7228] "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "No"  "Yes"
    ## [7239] "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7250] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7261] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7272] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7283] "Yes" "Yes" "No"  "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [7294] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7305] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7316] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No" 
    ## [7327] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [7338] "Yes" "Yes" "Yes" "Yes" "No"  "No"  "Yes" "Yes" "Yes" "No"  "No" 
    ## [7349] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes"
    ## [7360] "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes"
    ## [7371] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7382] "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7393] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes"
    ## [7404] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes"
    ## [7415] "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "No"  "No"  "Yes"
    ## [7426] "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "No"  "No"  "No"  "Yes" "No" 
    ## [7437] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7448] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7459] "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7470] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7481] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [7492] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7503] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7514] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7525] "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7536] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7547] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7558] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7569] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7580] "Yes" "No"  "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7591] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7602] "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7613] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7624] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7635] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "No"  "Yes" "Yes" "Yes"
    ## [7646] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7657] "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes" "Yes"
    ## [7668] "Yes"

### View row \#9 for one example of the inconsistency between year and year\_released columns

``` r
kbl(df[1:9,]) %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>% 
  scroll_box(width = "100%")
```

<div
style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
<th style="text-align:left;">
year\_released
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
The Shining
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 13, 1980 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
927000
</td>
<td style="text-align:left;">
Stanley Kubrick
</td>
<td style="text-align:left;">
Stephen King
</td>
<td style="text-align:left;">
Jack Nicholson
</td>
<td style="text-align:left;">
United Kingdom
</td>
<td style="text-align:right;">
1.9e+07
</td>
<td style="text-align:right;">
46998772
</td>
<td style="text-align:left;">
Warner Bros. 
</td>
<td style="text-align:right;">
146
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blue Lagoon
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Adventure
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
5.8
</td>
<td style="text-align:right;">
65000
</td>
<td style="text-align:left;">
Randal Kleiser
</td>
<td style="text-align:left;">
Henry De Vere Stacpoole
</td>
<td style="text-align:left;">
Brooke Shields
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
4.5e+06
</td>
<td style="text-align:right;">
58853106
</td>
<td style="text-align:left;">
Columbia Pictures
</td>
<td style="text-align:right;">
104
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode V - The Empire Strikes Back
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
8.7
</td>
<td style="text-align:right;">
1200000
</td>
<td style="text-align:left;">
Irvin Kershner
</td>
<td style="text-align:left;">
Leigh Brackett
</td>
<td style="text-align:left;">
Mark Hamill
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
538375067
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
124
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Airplane!
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
7.7
</td>
<td style="text-align:right;">
221000
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Robert Hays
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.5e+06
</td>
<td style="text-align:right;">
83453539
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
88
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Caddyshack
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 25, 1980 (United States)
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
108000
</td>
<td style="text-align:left;">
Harold Ramis
</td>
<td style="text-align:left;">
Brian Doyle-Murray
</td>
<td style="text-align:left;">
Chevy Chase
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
6.0e+06
</td>
<td style="text-align:right;">
39846344
</td>
<td style="text-align:left;">
Orion Pictures
</td>
<td style="text-align:right;">
98
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Friday the 13th
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Horror
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
May 9, 1980 (United States)
</td>
<td style="text-align:right;">
6.4
</td>
<td style="text-align:right;">
123000
</td>
<td style="text-align:left;">
Sean S. Cunningham
</td>
<td style="text-align:left;">
Victor Miller
</td>
<td style="text-align:left;">
Betsy Palmer
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.5e+05
</td>
<td style="text-align:right;">
39754601
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blues Brothers
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
7.9
</td>
<td style="text-align:right;">
188000
</td>
<td style="text-align:left;">
John Landis
</td>
<td style="text-align:left;">
Dan Aykroyd
</td>
<td style="text-align:left;">
John Belushi
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.7e+07
</td>
<td style="text-align:right;">
115229890
</td>
<td style="text-align:left;">
Universal Pictures
</td>
<td style="text-align:right;">
133
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Raging Bull
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Biography
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
December 19, 1980 (United States)
</td>
<td style="text-align:right;">
8.2
</td>
<td style="text-align:right;">
330000
</td>
<td style="text-align:left;">
Martin Scorsese
</td>
<td style="text-align:left;">
Jake LaMotta
</td>
<td style="text-align:left;">
Robert De Niro
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
23402427
</td>
<td style="text-align:left;">
Chartoff-Winkler Productions
</td>
<td style="text-align:right;">
129
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Superman II
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 19, 1981 (United States)
</td>
<td style="text-align:right;">
6.8
</td>
<td style="text-align:right;">
101000
</td>
<td style="text-align:left;">
Richard Lester
</td>
<td style="text-align:left;">
Jerry Siegel
</td>
<td style="text-align:left;">
Gene Hackman
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.4e+07
</td>
<td style="text-align:right;">
108185706
</td>
<td style="text-align:left;">
Dovemead Films
</td>
<td style="text-align:right;">
127
</td>
<td style="text-align:left;">
1981
</td>
</tr>
</tbody>
</table>

</div>

``` r
year_released <- as.numeric(year_released)
```

### Sort by highest grossing films

<br>

``` r
df_gross <- df[order(-gross),]
kbl(df_gross[1:9,]) %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>% 
  scroll_box(width = "100%")
```

<div
style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
<th style="text-align:left;">
year\_released
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
Avatar
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2009
</td>
<td style="text-align:left;">
December 18, 2009 (United States)
</td>
<td style="text-align:right;">
7.8
</td>
<td style="text-align:right;">
1100000
</td>
<td style="text-align:left;">
James Cameron
</td>
<td style="text-align:left;">
James Cameron
</td>
<td style="text-align:left;">
Sam Worthington
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.37e+08
</td>
<td style="text-align:right;">
2847246203
</td>
<td style="text-align:left;">
Twentieth Century Fox
</td>
<td style="text-align:right;">
162
</td>
<td style="text-align:left;">
2009
</td>
</tr>
<tr>
<td style="text-align:left;">
Avengers: Endgame
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2019
</td>
<td style="text-align:left;">
April 26, 2019 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
903000
</td>
<td style="text-align:left;">
Anthony Russo
</td>
<td style="text-align:left;">
Christopher Markus
</td>
<td style="text-align:left;">
Robert Downey Jr. 
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.56e+08
</td>
<td style="text-align:right;">
2797501328
</td>
<td style="text-align:left;">
Marvel Studios
</td>
<td style="text-align:right;">
181
</td>
<td style="text-align:left;">
2019
</td>
</tr>
<tr>
<td style="text-align:left;">
Titanic
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1997
</td>
<td style="text-align:left;">
December 19, 1997 (United States)
</td>
<td style="text-align:right;">
7.8
</td>
<td style="text-align:right;">
1100000
</td>
<td style="text-align:left;">
James Cameron
</td>
<td style="text-align:left;">
James Cameron
</td>
<td style="text-align:left;">
Leonardo DiCaprio
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.00e+08
</td>
<td style="text-align:right;">
2201647264
</td>
<td style="text-align:left;">
Twentieth Century Fox
</td>
<td style="text-align:right;">
194
</td>
<td style="text-align:left;">
1997
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode VII - The Force Awakens
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2015
</td>
<td style="text-align:left;">
December 18, 2015 (United States)
</td>
<td style="text-align:right;">
7.8
</td>
<td style="text-align:right;">
876000
</td>
<td style="text-align:left;">
J.J. Abrams
</td>
<td style="text-align:left;">
Lawrence Kasdan
</td>
<td style="text-align:left;">
Daisy Ridley
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.45e+08
</td>
<td style="text-align:right;">
2069521700
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
138
</td>
<td style="text-align:left;">
2015
</td>
</tr>
<tr>
<td style="text-align:left;">
Avengers: Infinity War
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2018
</td>
<td style="text-align:left;">
April 27, 2018 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
897000
</td>
<td style="text-align:left;">
Anthony Russo
</td>
<td style="text-align:left;">
Christopher Markus
</td>
<td style="text-align:left;">
Robert Downey Jr. 
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.21e+08
</td>
<td style="text-align:right;">
2048359754
</td>
<td style="text-align:left;">
Marvel Studios
</td>
<td style="text-align:right;">
149
</td>
<td style="text-align:left;">
2018
</td>
</tr>
<tr>
<td style="text-align:left;">
The Lion King
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Animation
</td>
<td style="text-align:right;">
2019
</td>
<td style="text-align:left;">
July 19, 2019 (United States)
</td>
<td style="text-align:right;">
6.9
</td>
<td style="text-align:right;">
222000
</td>
<td style="text-align:left;">
Jon Favreau
</td>
<td style="text-align:left;">
Jeff Nathanson
</td>
<td style="text-align:left;">
Donald Glover
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.60e+08
</td>
<td style="text-align:right;">
1670727580
</td>
<td style="text-align:left;">
Walt Disney Pictures
</td>
<td style="text-align:right;">
118
</td>
<td style="text-align:left;">
2019
</td>
</tr>
<tr>
<td style="text-align:left;">
Jurassic World
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2015
</td>
<td style="text-align:left;">
June 12, 2015 (United States)
</td>
<td style="text-align:right;">
7.0
</td>
<td style="text-align:right;">
593000
</td>
<td style="text-align:left;">
Colin Trevorrow
</td>
<td style="text-align:left;">
Rick Jaffa
</td>
<td style="text-align:left;">
Chris Pratt
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.50e+08
</td>
<td style="text-align:right;">
1670516444
</td>
<td style="text-align:left;">
Universal Pictures
</td>
<td style="text-align:right;">
124
</td>
<td style="text-align:left;">
2015
</td>
</tr>
<tr>
<td style="text-align:left;">
The Avengers
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2012
</td>
<td style="text-align:left;">
May 4, 2012 (United States)
</td>
<td style="text-align:right;">
8.0
</td>
<td style="text-align:right;">
1300000
</td>
<td style="text-align:left;">
Joss Whedon
</td>
<td style="text-align:left;">
Joss Whedon
</td>
<td style="text-align:left;">
Robert Downey Jr. 
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.20e+08
</td>
<td style="text-align:right;">
1518815515
</td>
<td style="text-align:left;">
Marvel Studios
</td>
<td style="text-align:right;">
143
</td>
<td style="text-align:left;">
2012
</td>
</tr>
<tr>
<td style="text-align:left;">
Furious 7
</td>
<td style="text-align:left;">
PG-13
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
2015
</td>
<td style="text-align:left;">
April 3, 2015 (United States)
</td>
<td style="text-align:right;">
7.1
</td>
<td style="text-align:right;">
370000
</td>
<td style="text-align:left;">
James Wan
</td>
<td style="text-align:left;">
Chris Morgan
</td>
<td style="text-align:left;">
Vin Diesel
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.90e+08
</td>
<td style="text-align:right;">
1515341399
</td>
<td style="text-align:left;">
Universal Pictures
</td>
<td style="text-align:right;">
137
</td>
<td style="text-align:left;">
2015
</td>
</tr>
</tbody>
</table>

</div>

### Look for duplicate rows

<br>

``` r
df_dis <- df %>%
 distinct()
nrow(df_dis)
```

    ## [1] 7668

``` r
nrow(df)
```

    ## [1] 7668

### There are no duplicate rows

<br>

### Plot budget vs gross earnings (scatterplot and reg line)

![](portfolio_movies_cor_files/figure-gfm/unnamed-chunk-9-1.png)<!-- -->

### Statistics: correlation

``` r
library(corrplot)
```

    ## corrplot 0.84 loaded

``` r
kbl(df[1:10,]) %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>% 
  scroll_box(width = "100%")
```

<div
style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
<th style="text-align:left;">
year\_released
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
The Shining
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 13, 1980 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
927000
</td>
<td style="text-align:left;">
Stanley Kubrick
</td>
<td style="text-align:left;">
Stephen King
</td>
<td style="text-align:left;">
Jack Nicholson
</td>
<td style="text-align:left;">
United Kingdom
</td>
<td style="text-align:right;">
1.9e+07
</td>
<td style="text-align:right;">
46998772
</td>
<td style="text-align:left;">
Warner Bros. 
</td>
<td style="text-align:right;">
146
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blue Lagoon
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Adventure
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
5.8
</td>
<td style="text-align:right;">
65000
</td>
<td style="text-align:left;">
Randal Kleiser
</td>
<td style="text-align:left;">
Henry De Vere Stacpoole
</td>
<td style="text-align:left;">
Brooke Shields
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
4.5e+06
</td>
<td style="text-align:right;">
58853106
</td>
<td style="text-align:left;">
Columbia Pictures
</td>
<td style="text-align:right;">
104
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode V - The Empire Strikes Back
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
8.7
</td>
<td style="text-align:right;">
1200000
</td>
<td style="text-align:left;">
Irvin Kershner
</td>
<td style="text-align:left;">
Leigh Brackett
</td>
<td style="text-align:left;">
Mark Hamill
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
538375067
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
124
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Airplane!
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
7.7
</td>
<td style="text-align:right;">
221000
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Robert Hays
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.5e+06
</td>
<td style="text-align:right;">
83453539
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
88
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Caddyshack
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 25, 1980 (United States)
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
108000
</td>
<td style="text-align:left;">
Harold Ramis
</td>
<td style="text-align:left;">
Brian Doyle-Murray
</td>
<td style="text-align:left;">
Chevy Chase
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
6.0e+06
</td>
<td style="text-align:right;">
39846344
</td>
<td style="text-align:left;">
Orion Pictures
</td>
<td style="text-align:right;">
98
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Friday the 13th
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Horror
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
May 9, 1980 (United States)
</td>
<td style="text-align:right;">
6.4
</td>
<td style="text-align:right;">
123000
</td>
<td style="text-align:left;">
Sean S. Cunningham
</td>
<td style="text-align:left;">
Victor Miller
</td>
<td style="text-align:left;">
Betsy Palmer
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.5e+05
</td>
<td style="text-align:right;">
39754601
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blues Brothers
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
7.9
</td>
<td style="text-align:right;">
188000
</td>
<td style="text-align:left;">
John Landis
</td>
<td style="text-align:left;">
Dan Aykroyd
</td>
<td style="text-align:left;">
John Belushi
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.7e+07
</td>
<td style="text-align:right;">
115229890
</td>
<td style="text-align:left;">
Universal Pictures
</td>
<td style="text-align:right;">
133
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Raging Bull
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Biography
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
December 19, 1980 (United States)
</td>
<td style="text-align:right;">
8.2
</td>
<td style="text-align:right;">
330000
</td>
<td style="text-align:left;">
Martin Scorsese
</td>
<td style="text-align:left;">
Jake LaMotta
</td>
<td style="text-align:left;">
Robert De Niro
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
23402427
</td>
<td style="text-align:left;">
Chartoff-Winkler Productions
</td>
<td style="text-align:right;">
129
</td>
<td style="text-align:left;">
1980
</td>
</tr>
<tr>
<td style="text-align:left;">
Superman II
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 19, 1981 (United States)
</td>
<td style="text-align:right;">
6.8
</td>
<td style="text-align:right;">
101000
</td>
<td style="text-align:left;">
Richard Lester
</td>
<td style="text-align:left;">
Jerry Siegel
</td>
<td style="text-align:left;">
Gene Hackman
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.4e+07
</td>
<td style="text-align:right;">
108185706
</td>
<td style="text-align:left;">
Dovemead Films
</td>
<td style="text-align:right;">
127
</td>
<td style="text-align:left;">
1981
</td>
</tr>
<tr>
<td style="text-align:left;">
The Long Riders
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Biography
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
May 16, 1980 (United States)
</td>
<td style="text-align:right;">
7.0
</td>
<td style="text-align:right;">
10000
</td>
<td style="text-align:left;">
Walter Hill
</td>
<td style="text-align:left;">
Bill Bryden
</td>
<td style="text-align:left;">
David Carradine
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.0e+07
</td>
<td style="text-align:right;">
15795189
</td>
<td style="text-align:left;">
United Artists
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:left;">
1980
</td>
</tr>
</tbody>
</table>

</div>

``` r
cordf <- select(df, budget, gross, runtime, score, votes, year)

sapply(cordf, is.numeric)
```

    ##  budget   gross runtime   score   votes    year 
    ##    TRUE    TRUE    TRUE    TRUE    TRUE    TRUE

``` r
Cor.data <- cor(cordf,use = "pairwise.complete.obs")
Cor.data
```

    ##             budget     gross   runtime      score     votes       year
    ## budget  1.00000000 0.7403949 0.3204473 0.07625404 0.4424295 0.32932110
    ## gross   0.74039489 1.0000000 0.2452161 0.18625781 0.6307566 0.25748557
    ## runtime 0.32044729 0.2452161 1.0000000 0.39945108 0.3092120 0.12081082
    ## score   0.07625404 0.1862578 0.3994511 1.00000000 0.4091822 0.09799496
    ## votes   0.44242948 0.6307566 0.3092120 0.40918219 1.0000000 0.22294493
    ## year    0.32932110 0.2574856 0.1208108 0.09799496 0.2229449 1.00000000

``` r
corrplot(Cor.data, method = 'color', col = col2(50))  
```

![](portfolio_movies_cor_files/figure-gfm/unnamed-chunk-10-1.png)<!-- -->

### After making all of the character type columns numeric, we can see the correlation matrix for the entire dataset

<br>

``` r
df$company2 <- as.factor(company)
df$company2 <- as.numeric(df$company2)

df$name2 <- as.factor(name)
df$name2 <- as.numeric(df$name2)

df$rating2 <- as.factor(rating)
df$rating2 <- as.numeric(df$rating2)

df$genre2 <- as.factor(genre)
df$genre2 <- as.numeric(df$genre2)

df$director2 <- as.factor(director)
df$director2 <- as.numeric(df$director2)

df$writer2 <- as.factor(writer)
df$writer2 <- as.numeric(df$writer2)

df$star2 <- as.factor(star)
df$star2 <- as.numeric(df$star2)

df$country2 <- as.factor(country)
df$country2 <- as.numeric(df$country2)

sapply(df, class)
```

    ##          name        rating         genre          year      released 
    ##   "character"   "character"   "character"     "numeric"   "character" 
    ##         score         votes      director        writer          star 
    ##     "numeric"     "numeric"   "character"   "character"   "character" 
    ##       country        budget         gross       company       runtime 
    ##   "character"     "numeric"     "numeric"   "character"     "numeric" 
    ## year_released      company2         name2       rating2        genre2 
    ##   "character"     "numeric"     "numeric"     "numeric"     "numeric" 
    ##     director2       writer2         star2      country2 
    ##     "numeric"     "numeric"     "numeric"     "numeric"

``` r
### Below is a much more efficient way to do this, but although the data show numeric variables, the corr plots show NA. We will proceed with using the less efficient, working solution. 

# cols.num <- c("name","rating","genre","director","writer","star","country","company")
# df[cols.num] <- sapply(df[cols.num],as.factor)
# df[cols.num] <- sapply(df[cols.num],as.numeric)
# sapply(df, class)

cordf2 <- select(df, name2, rating2, genre2, budget, gross, director2, writer2, star2, runtime, country2, company2, score, votes, year)

#sapply(cordf2, is.numeric)

Cor.data2 <- cor(cordf2,use = "pairwise.complete.obs")
Cor.data2
```

    ##                  name2      rating2       genre2      budget        gross
    ## name2      1.000000000 -0.012855120  0.014928152  0.02470330  0.006161846
    ## rating2   -0.012855120  1.000000000  0.120003289 -0.20330040 -0.131319634
    ## genre2     0.014928152  0.120003289  1.000000000 -0.35656448 -0.235650300
    ## budget     0.024703300 -0.203300396 -0.356564481  1.00000000  0.740394893
    ## gross      0.006161846 -0.131319634 -0.235650300  0.74039489  1.000000000
    ## director2  0.012497932  0.019176658 -0.015866589 -0.01204584 -0.012515262
    ## writer2    0.013129279 -0.001867312  0.006612899 -0.03948649 -0.021365098
    ## star2      0.007030641  0.005853296 -0.004828209 -0.01987322 -0.002483091
    ## runtime    0.011631445  0.067571908 -0.052710861  0.32044729  0.245216132
    ## country2  -0.010884011  0.034674818 -0.036121182  0.05355599  0.091986364
    ## company2   0.010299829 -0.078212441 -0.071173450  0.17228322  0.154036645
    ## score      0.017379831  0.011652998  0.027964745  0.07625404  0.186257811
    ## votes      0.013114190  0.015313901 -0.145306818  0.44242948  0.630756584
    ## year       0.011261687  0.026157951 -0.081260667  0.32932110  0.257485566
    ##              director2      writer2        star2      runtime    country2
    ## name2      0.012497932  0.013129279  0.007030641  0.011631445 -0.01088401
    ## rating2    0.019176658 -0.001867312  0.005853296  0.067571908  0.03467482
    ## genre2    -0.015866589  0.006612899 -0.004828209 -0.052710861 -0.03612118
    ## budget    -0.012045838 -0.039486488 -0.019873220  0.320447289  0.05355599
    ## gross     -0.012515262 -0.021365098 -0.002483091  0.245216132  0.09198636
    ## director2  1.000000000  0.299266503  0.040210158  0.018464250  0.02599986
    ## writer2    0.299266503  1.000000000  0.028544355 -0.003640930  0.02061813
    ## star2      0.040210158  0.028544355  1.000000000  0.009816569 -0.01294935
    ## runtime    0.018464250 -0.003640930  0.009816569  1.000000000 -0.07919070
    ## country2   0.025999862  0.020618130 -0.012949350 -0.079190698  1.00000000
    ## company2   0.006786276  0.004042822  0.010917874  0.032867832  0.09320505
    ## score      0.006505146  0.017410015 -0.002248824  0.399451082 -0.13448767
    ## votes      0.002580593  0.002764114 -0.019019138  0.309211992  0.07361153
    ## year      -0.016860439 -0.006994526 -0.027423285  0.120810823 -0.06963862
    ##               company2        score        votes         year
    ## name2      0.010299829  0.017379831  0.013114190  0.011261687
    ## rating2   -0.078212441  0.011652998  0.015313901  0.026157951
    ## genre2    -0.071173450  0.027964745 -0.145306818 -0.081260667
    ## budget     0.172283223  0.076254044  0.442429484  0.329321100
    ## gross      0.154036645  0.186257811  0.630756584  0.257485566
    ## director2  0.006786276  0.006505146  0.002580593 -0.016860439
    ## writer2    0.004042822  0.017410015  0.002764114 -0.006994526
    ## star2      0.010917874 -0.002248824 -0.019019138 -0.027423285
    ## runtime    0.032867832  0.399451082  0.309211992  0.120810823
    ## country2   0.093205047 -0.134487670  0.073611530 -0.069638622
    ## company2   1.000000000 -0.002399987  0.132001053 -0.010640584
    ## score     -0.002399987  1.000000000  0.409182192  0.097994958
    ## votes      0.132001053  0.409182192  1.000000000  0.222944927
    ## year      -0.010640584  0.097994958  0.222944927  1.000000000

``` r
corrplot(Cor.data2, method = 'color', col = col2(50))  
```

![](portfolio_movies_cor_files/figure-gfm/unnamed-chunk-11-1.png)<!-- -->

``` r
kbl(df[1:10,]) %>% 
  kable_styling(bootstrap_options = c("striped", "hover", "condensed")) %>% 
  scroll_box(width = "100%")
```

<div
style="border: 1px solid #ddd; padding: 5px; overflow-x: scroll; width:100%; ">

<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead>
<tr>
<th style="text-align:left;">
name
</th>
<th style="text-align:left;">
rating
</th>
<th style="text-align:left;">
genre
</th>
<th style="text-align:right;">
year
</th>
<th style="text-align:left;">
released
</th>
<th style="text-align:right;">
score
</th>
<th style="text-align:right;">
votes
</th>
<th style="text-align:left;">
director
</th>
<th style="text-align:left;">
writer
</th>
<th style="text-align:left;">
star
</th>
<th style="text-align:left;">
country
</th>
<th style="text-align:right;">
budget
</th>
<th style="text-align:right;">
gross
</th>
<th style="text-align:left;">
company
</th>
<th style="text-align:right;">
runtime
</th>
<th style="text-align:left;">
year\_released
</th>
<th style="text-align:right;">
company2
</th>
<th style="text-align:right;">
name2
</th>
<th style="text-align:right;">
rating2
</th>
<th style="text-align:right;">
genre2
</th>
<th style="text-align:right;">
director2
</th>
<th style="text-align:right;">
writer2
</th>
<th style="text-align:right;">
star2
</th>
<th style="text-align:right;">
country2
</th>
</tr>
</thead>
<tbody>
<tr>
<td style="text-align:left;">
The Shining
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Drama
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 13, 1980 (United States)
</td>
<td style="text-align:right;">
8.4
</td>
<td style="text-align:right;">
927000
</td>
<td style="text-align:left;">
Stanley Kubrick
</td>
<td style="text-align:left;">
Stephen King
</td>
<td style="text-align:left;">
Jack Nicholson
</td>
<td style="text-align:left;">
United Kingdom
</td>
<td style="text-align:right;">
1.9e+07
</td>
<td style="text-align:right;">
46998772
</td>
<td style="text-align:left;">
Warner Bros. 
</td>
<td style="text-align:right;">
146
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
2325
</td>
<td style="text-align:right;">
6591
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
2595
</td>
<td style="text-align:right;">
4025
</td>
<td style="text-align:right;">
1049
</td>
<td style="text-align:right;">
55
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blue Lagoon
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Adventure
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
5.8
</td>
<td style="text-align:right;">
65000
</td>
<td style="text-align:left;">
Randal Kleiser
</td>
<td style="text-align:left;">
Henry De Vere Stacpoole
</td>
<td style="text-align:left;">
Brooke Shields
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
4.5e+06
</td>
<td style="text-align:right;">
58853106
</td>
<td style="text-align:left;">
Columbia Pictures
</td>
<td style="text-align:right;">
104
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
730
</td>
<td style="text-align:right;">
5575
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
2
</td>
<td style="text-align:right;">
2274
</td>
<td style="text-align:right;">
1640
</td>
<td style="text-align:right;">
330
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Star Wars: Episode V - The Empire Strikes Back
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
8.7
</td>
<td style="text-align:right;">
1200000
</td>
<td style="text-align:left;">
Irvin Kershner
</td>
<td style="text-align:left;">
Leigh Brackett
</td>
<td style="text-align:left;">
Mark Hamill
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
538375067
</td>
<td style="text-align:left;">
Lucasfilm
</td>
<td style="text-align:right;">
124
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
1547
</td>
<td style="text-align:right;">
5147
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1117
</td>
<td style="text-align:right;">
2577
</td>
<td style="text-align:right;">
1748
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Airplane!
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 2, 1980 (United States)
</td>
<td style="text-align:right;">
7.7
</td>
<td style="text-align:right;">
221000
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Jim Abrahams
</td>
<td style="text-align:left;">
Robert Hays
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
3.5e+06
</td>
<td style="text-align:right;">
83453539
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
88
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
1817
</td>
<td style="text-align:right;">
288
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
1307
</td>
<td style="text-align:right;">
2009
</td>
<td style="text-align:right;">
2250
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Caddyshack
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Comedy
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
July 25, 1980 (United States)
</td>
<td style="text-align:right;">
7.3
</td>
<td style="text-align:right;">
108000
</td>
<td style="text-align:left;">
Harold Ramis
</td>
<td style="text-align:left;">
Brian Doyle-Murray
</td>
<td style="text-align:left;">
Chevy Chase
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
6.0e+06
</td>
<td style="text-align:right;">
39846344
</td>
<td style="text-align:left;">
Orion Pictures
</td>
<td style="text-align:right;">
98
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
1784
</td>
<td style="text-align:right;">
1027
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
1060
</td>
<td style="text-align:right;">
524
</td>
<td style="text-align:right;">
413
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Friday the 13th
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Horror
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
May 9, 1980 (United States)
</td>
<td style="text-align:right;">
6.4
</td>
<td style="text-align:right;">
123000
</td>
<td style="text-align:left;">
Sean S. Cunningham
</td>
<td style="text-align:left;">
Victor Miller
</td>
<td style="text-align:left;">
Betsy Palmer
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.5e+05
</td>
<td style="text-align:right;">
39754601
</td>
<td style="text-align:left;">
Paramount Pictures
</td>
<td style="text-align:right;">
95
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
1817
</td>
<td style="text-align:right;">
2113
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
11
</td>
<td style="text-align:right;">
2534
</td>
<td style="text-align:right;">
4370
</td>
<td style="text-align:right;">
244
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
The Blues Brothers
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 20, 1980 (United States)
</td>
<td style="text-align:right;">
7.9
</td>
<td style="text-align:right;">
188000
</td>
<td style="text-align:left;">
John Landis
</td>
<td style="text-align:left;">
Dan Aykroyd
</td>
<td style="text-align:left;">
John Belushi
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
2.7e+07
</td>
<td style="text-align:right;">
115229890
</td>
<td style="text-align:left;">
Universal Pictures
</td>
<td style="text-align:right;">
133
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
2285
</td>
<td style="text-align:right;">
5576
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
1419
</td>
<td style="text-align:right;">
840
</td>
<td style="text-align:right;">
1281
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Raging Bull
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Biography
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
December 19, 1980 (United States)
</td>
<td style="text-align:right;">
8.2
</td>
<td style="text-align:right;">
330000
</td>
<td style="text-align:left;">
Martin Scorsese
</td>
<td style="text-align:left;">
Jake LaMotta
</td>
<td style="text-align:left;">
Robert De Niro
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.8e+07
</td>
<td style="text-align:right;">
23402427
</td>
<td style="text-align:left;">
Chartoff-Winkler Productions
</td>
<td style="text-align:right;">
129
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
627
</td>
<td style="text-align:right;">
4437
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
1836
</td>
<td style="text-align:right;">
1777
</td>
<td style="text-align:right;">
2244
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
Superman II
</td>
<td style="text-align:left;">
PG
</td>
<td style="text-align:left;">
Action
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
June 19, 1981 (United States)
</td>
<td style="text-align:right;">
6.8
</td>
<td style="text-align:right;">
101000
</td>
<td style="text-align:left;">
Richard Lester
</td>
<td style="text-align:left;">
Jerry Siegel
</td>
<td style="text-align:left;">
Gene Hackman
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
5.4e+07
</td>
<td style="text-align:right;">
108185706
</td>
<td style="text-align:left;">
Dovemead Films
</td>
<td style="text-align:right;">
127
</td>
<td style="text-align:left;">
1981
</td>
<td style="text-align:right;">
885
</td>
<td style="text-align:right;">
5286
</td>
<td style="text-align:right;">
5
</td>
<td style="text-align:right;">
1
</td>
<td style="text-align:right;">
2313
</td>
<td style="text-align:right;">
1988
</td>
<td style="text-align:right;">
880
</td>
<td style="text-align:right;">
56
</td>
</tr>
<tr>
<td style="text-align:left;">
The Long Riders
</td>
<td style="text-align:left;">
R
</td>
<td style="text-align:left;">
Biography
</td>
<td style="text-align:right;">
1980
</td>
<td style="text-align:left;">
May 16, 1980 (United States)
</td>
<td style="text-align:right;">
7.0
</td>
<td style="text-align:right;">
10000
</td>
<td style="text-align:left;">
Walter Hill
</td>
<td style="text-align:left;">
Bill Bryden
</td>
<td style="text-align:left;">
David Carradine
</td>
<td style="text-align:left;">
United States
</td>
<td style="text-align:right;">
1.0e+07
</td>
<td style="text-align:right;">
15795189
</td>
<td style="text-align:left;">
United Artists
</td>
<td style="text-align:right;">
100
</td>
<td style="text-align:left;">
1980
</td>
<td style="text-align:right;">
2276
</td>
<td style="text-align:right;">
6217
</td>
<td style="text-align:right;">
7
</td>
<td style="text-align:right;">
4
</td>
<td style="text-align:right;">
2870
</td>
<td style="text-align:right;">
426
</td>
<td style="text-align:right;">
590
</td>
<td style="text-align:right;">
56
</td>
</tr>
</tbody>
</table>

</div>

### Takeaways<br>

#### 1) Votes vs. Gross earnings, Votes vs. Budget, and Gross earnings vs. Budget have strong positive correlation using the Pearson method.<br>

#### 2) Movies with the highest number of votes have moderate positive correlation vs. gross earnings.<br>
