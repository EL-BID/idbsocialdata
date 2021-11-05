*******************************************************************************
* 
*! v 0.1  	by SCLData
* API end point to HTTPS
*******************************************************************************

program def idbsocialdata, rclass
	  version 9.0
	  
	  syntax [,countries(string)            ///
			   categories(string)         ///
			   indicators(string)         ///
			   yearstart(string)         ///
			   yearend(string)]
	   
	  local baseurl = "https://scl.datamig.org/data?"
	  
	  if ("`indicators'"="") {
				noi di  as err "Select at least one indicator"
			}

	  if ("`indicators'"!="") {
				local baseurl = "`baseurl'" + "&indicators=" + "`indicators'"
			}
			
	  if ("`countries'"!="") {
				local baseurl = "`baseurl'" + "&countries=" + "`countries'"
			}
			
	  if ("`categories'"!="") {
				local baseurl = "`baseurl'" + "&categories=" + "`categories'"
			}

	  if ("`yearstart'"!="") {
				local baseurl = "`baseurl'" + "&yearstart=" + "`yearstart'"
			}			
	  if ("`yearend'"!="") {
				local baseurl = "`baseurl'" + "&yearend=" + "`yearend'"
			}
			

	  local baseurl =  "`baseurl'" + "&format=csv"
	  import delimited "`baseurl'"
end