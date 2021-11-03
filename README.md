# idbsocialdata: Stata module to access 

## Description

****** allows Stata users to download over **  indicators from the World Bank databases, including: ***;

### Install
github install BID-DATA/idbsocialdata
``` r
. net install idbsocialdata, from (https://github.com/BID-DATA/idbsocialdata/blob/main/)

net  install idbsocialdata, from("https://raw.githubusercontent.com/BID-DATA/idbsocialdata/main") replace

github install BID-DATA/idbsocialdata
```

## Examples
``` r
get_indicator, indicators("pobreza") countries("COL,ECU,BRA,URY") categories("area")

```

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

