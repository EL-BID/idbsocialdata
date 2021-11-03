# idbsocialdata: Stata module to access 

## Description

****** allows Stata users to download over **  indicators from the World Bank databases, including: ***;

### Install
github install BID-DATA/idbsocialdata
``` r
net  install idbsocialdata, from("https://raw.githubusercontent.com/BID-DATA/idbsocialdata/main") replace
```


## Examples

``` r
clear
idbsocialdata, indicators("pobreza") countries("COL,ECU,BRA,URY")
twoway (scatter value year), scheme(s2color) by(country_name_es)
```
![e_g](src/img/plot_egA.jpg)

``` r
sysuse auto, clear
clear
idbsocialdata, indicators("pobreza") countries("COL,ECU,BRA,URY") categories("sex")
separate value, by(country_name_es) shortlabel
set scheme s2color
scatter value? year, ytitle(country_name_es) by(sex)
```

![e_g](src/img/plot_egB.jpg)

## 


### Parameters

- countries(string): Countries and Regions Abbreviations and acronyms. 
- indicators(string): Indicators List list of indicator codes (All series). When selecting multiple indicators please use semicolon (;), to separate differenet indicatos.

## Disclaimer


## Terms of use 


## Blog Posts


## Suggested Citation

## Author: 

  **SCLData**  

