
/* Librería Stata
Selecciona el conjunto de datos que quieres analizar, definiendo los siguientes parámetros.

Parámetros
•	countries(string): Acrónimo del país (usa su código ISO Alpha-3), [ARG]. 
•	indicators(string): nombre del indicador específico [pobreza] o la serie completa.
•	categories(string): desagregaciones de indicador para diferentes grupos por área, quintil, sexo, nivel educativo, grupo de edad, etnicidad, condición de discapacidad, migrante y otros.
•	startyear(string): selecciona el año en el que quieres que inicie la serie entre 1986 y 2022.
•	endyear(string): selecciona el último de la serie año entre 1986 y 2022. 

Cuando selecciones múltiples valores, utiliza coma (,) para separarlos.
*/

* Ejemplo 1 -------------------------------------------------------------------------------------------------------------------- 

* 1. Instalar paquete
net  install idbsocialdata, from("https://raw.githubusercontent.com/EL-BID/idbsocialdata/main") replace


* 2. Seleccionar indicadores y países
clear

idbsocialdata, indicators("pobreza,tasa_ocupacion") countries("COL,ECU,BRA,URY")

* 3. Grafica
twoway (scatter value year if indicator=="pobreza"), ///
		ylabel(0(.1).3) xtitle(" ") ytitle("Porcentaje (%)")  ///
		 by(country_name_es) ///
		by(, title(`"Pobreza moderada"') ///
		subtitle("Línea de pobreza: $5 USD diarios per cápita ") ///
		note("Porcentaje de la población que vive en hogares con un ingreso per cápita menor a $5 USD por día" ///
		"ajustados PPA 2011.", size(vsmall))) ///
		by(, graphregion(color(white)))  subtitle(, fcolor(white) lcolor(none))


* Ejemplo 2 -------------------------------------------------------------------------------------------------------------------- 

* 2. Seleccionar indicadores y países
clear all
idbsocialdata, indicators("tasa_ocupacion") countries("MEX") categories("sex,area")

* 3. Grafica
twoway (line value year if sex=="man" & area=="Total") (line value year if sex=="woman" & area=="Total"), ///
		legend(order(1 "Hombres" 2 "Mujeres")) xtitle("Año") ytitle("Porcentaje (%)") ylabel(0(.25)1) ///
		subtitle("México") ///
		title("Tasa de ocupación") ///
		subtitle("México") ///
		note("Porcentaje del total personas ocupadas respecto a la población en edad de trabajar.")  ///
		graphregion(color(white))


