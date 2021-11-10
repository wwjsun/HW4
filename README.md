---
output: report.html
---

The project request the following R packages

``` r 
install.packages("gtsummary")
install.packages("survival")
```

or you may use R package renv
```r
renv::restore()
renv::snapshot()
```
To open the report, use basesh "open Rmd/report.html"