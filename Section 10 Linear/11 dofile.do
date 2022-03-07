*Oaxaca decomposition
search oaxaca

*Install
net install "http://www.stata-journal.com/software/sj8-4/st0151.pkg"

*Examine help file
help oaxaca

*Use Oaxaca training data
use oaxaca.dta

*Describe data
describe
tab female, su(lnwage)

*Oaxaca decomposition
oaxaca lnwage educ, by(female) pooled

*Oaxaca decomposition additional covariate
oaxaca lnwage educ exper, by(female) pooled

*Oaxaca decomposition additional reporting options
oaxaca lnwage educ exper, by(female) pooled detail noisily xb

*Oaxaca decomposition full variable list
xi: oaxaca lnwage educ exper tenure married divorced kids6 kids714 i.isco, by(female) pooled
