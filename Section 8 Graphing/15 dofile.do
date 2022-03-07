*Open NLSW88 training data
clear
sysuse nlsw88

*Help speparate
help separate 

*Separate hours by race categories
separate hours, by(race) 

*Scatter hours categ ories by wage
scatter hours? wage, mcolor(dknavy%50 maroon%50 yellow%50) mlcolor(black ..) msize(*1.25 ..) 

*Open Auto training data
clear 
sysuse auto

*Separate price by rep78 categories
separate price, by(rep78) shortlabel

*Scatter price categories by mpg
scatter price? mpg, mlcolor(black ..) msize(*1.25 ..) legend(row(1) size(*0.75))

*Open NLSW88 training data
clear
sysuse nlsw88

*Help collapse
help collapse

*collapse dataset to summary statistics
collapse (mean) wage hour, by(occupation race)

*Separate summary statistics
separate hours, by(race) veryshortlabel

*Scatter hours categories by wage and label occupations.
scatter hours? wage, mcolor(dknavy%50 maroon%50 yellow%50) mlabel(occupation occupation occupation) mlcolor(black ..)  mlabposition(6) msize(*1.25 ..) legend(row(1)) ytitle(Average Hours Worked) xtitle(Average Hourly Wage)




