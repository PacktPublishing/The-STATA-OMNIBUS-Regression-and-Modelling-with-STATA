*clear and load data
clear
use https://www.stata-press.com/data/r16/401k

*describe data
describe

*examine participation rate
su prate
hist prate

*Estimate linear regression and summarize predictions
reg prate mrate totemp c.age##c.age sole
predict yhatols
su prate yhatols

*Plot predictions from OLS against actual values on histogram
tw (hist prate, color(red%30)) (hist yhatols, color(blue%30)) 

*Fractional response model with logit link
fracreg logit prate mrate totemp c.age##c.age sole
predict yhatfr
su prate yhatfr

*Plot predictions from OLS  and fractional regression against actual values on histogram
tw (hist prate, color(red%30)) (hist yhatols, color(blue%30)) (hist yhatfr, color(green%30))

*Beta regression 
betareg prate mrate totemp c.age##c.age sole
betareg prate mrate totemp c.age##c.age sole if prate < 1
predict yhatbe
su prate yhatbe if prate < 1

*Install Zero-Inflated Beta Regression
net install "http://fmwww.bc.edu/RePEc/bocode/z/zoib.pkg", replace

*Zero inflate beta regression
zoib prate mrate totemp c.age##c.age sole, oneinflate(mrate totemp c.age##c.age sole employ) 
predict yhatze1
predict yhatze2, pr1
gen yhatze = yhatze1
replace yhatze = 1 if yhatze2 > 0.5
su prate yhatze 	 

*Plot predictions from OLS, fractional regression and zero-inflated beta regression against actual values on histogram
tw (hist prate, color(red%30)) (hist yhatols, color(blue%30)) (hist yhatfr, color(green%30)) (hist yhatze, color(black%30))
 
 
 
 
