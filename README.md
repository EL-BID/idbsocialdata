﻿# idbsocialdata: Stata module to access 

## Description

Stata module to access IADB SCLdata collections

### Install

You can install the development version like so:


``` r
net  install idbsocialdata, from("https://raw.githubusercontent.com/BID-DATA/idbsocialdata/main") replace
```


### Parameters

- countries(string): Countries and Regions Abbreviations and acronyms. 
- indicators(string): Indicators List list of indicator codes (All series). When selecting multiple indicators please use semicolon (;), to separate differenet indicatos.
- categories(string):
- startyear(string):
- endyear(string):

## Examples

This is a basic example

``` r
clear

idbsocialdata, indicators("pobreza") countries("COL,ECU,BRA,URY")

twoway (scatter value year), scheme(s2color) by(country_name_es)
```

![e_g](src/img/plot_egA.jpg)


``` r
clear

idbsocialdata, indicators("pobreza") countries("COL,ECU,BRA,URY") categories("sex")


separate value, by(country_name_es) shortlabel
set scheme s2color
scatter value? year, ytitle(country_name_es) by(sex)

```

![e_g](src/img/plot_egB.jpg)

## 


## Disclaimer


## Terms of use 


## Blog Posts


## Suggested Citation

## Author: 

  **SCLData**  

