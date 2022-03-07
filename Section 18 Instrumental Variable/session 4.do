*Clear and load trainig data
clear
webuse womenwk

*Describe training data
describe
summarize

*Estimate wagre regression without selection
regress wage age education 

*Manually perform Heckman two-step correction
*Create selection dummy
gen treated = !missing(wage)
*Estimate selection equation
probit treated married children educ age
*Linear predictions from selection equation
predict zg, xb
*Compute inverse Mills Ratio
gen phi=normalden(zg)
gen PHI=normal(zg)
gen lambda=phi/PHI
*Include inverse Mills Ratio in wage regression
reg wage age education lambda

*Same with Heckman command
heckman wage education age, select(married children education age)  

*Same with eregress command
eregress wage education age, select(treated = married children education age)

*Selection and endogeneity problems combined
eregress wage age, select(treated = married children education age) endogenous(education = i.county)
