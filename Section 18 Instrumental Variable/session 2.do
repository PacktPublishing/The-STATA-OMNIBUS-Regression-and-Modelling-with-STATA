*Simulate small dataset with endogenous relationship
clear

set obs 1000
set seed 1234

gen e1 = rnormal()
gen e2 = rnormal()
gen z1 = rnormal()
gen z2 = rnormal()
gen x1 = rnormal() + 1*e1 + 1*z1
gen x2 = rnormal() + 1*e1 + 1*z2
gen x3 = rnormal()

*Generate y with x1 being endogenous
gen y = 1 + 1*x1 + 1*x2 + 1*x3 + (1*e1 + 1*e2)

*Standard linear regression
reg y x1 x2 x3

*Standard linear regression controlling for unobserved error term 
reg y x1 x2 x3 e1

*IV regression
ivregress 2sls y x3 (x1 x2 = z1 z2), first 

*Extended linear regression
eregress y x3, endogenous(x1 = z1) endogenous(x2 = z2) 

*Loading training data
clear
webuse class10

*Describe data
describe

*Standard OLS
regress gpa income hsgpa
margins, at(hsgpa = (2(0.1)4)) saving(file1, replace) 

*Tab hscomp
tab hscomp

*Extended regression
eregress gpa income, endogenous(hsgpa = i.hscomp) 
margins, at(hsgpa = (2(0.1)4)) predict(fix(hsgpa)) saving(file2, replace) 

*Combined marginsplot
combomarginsplot file1 file2
