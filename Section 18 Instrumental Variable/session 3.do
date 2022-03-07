*Simulate small dataset with endogenous relationship
clear

set obs 10000
set seed 1234

gen e1 = rnormal()
gen z1 = rnormal()
gen x1 = rnormal() + 1*e1 + 1*z1

*Generate y with x1 being endogenous
gen ystar = 1 + 1*x1 + 1*e1
gen y = (ystar > 1)

*Standard probit regression
probit y x1 
margins, dydx(x1) atmeans

*linear IV regression
ivregressL 2sls y (x1 = z1), first 

*Extended probit regression
eprobit y, endogenous(x1 = z1)
margins, dydx(x1) atmeans predict(fix(x1))

*Loading training data
clear
webuse class10

*Describe data
describe
summarize

*Standard probit
probit graduate income hsgpa
margins, dydx(hsgpa) atmeans
margins, at(hsgpa = (2(0.1)4)) saving(file1, replace)
margins, dydx(hsgpa) at(hsgpa = (2(0.1)4)) saving(file3, replace)

*Extended probit regression
eprobit graduate income, endogenous(hsgpa = i.hscomp)
margins, dydx(hsgpa) predict(fix(hsgpa)) atmeans
margins, at(hsgpa = (2(0.1)4)) predict(fix(hsgpa)) saving(file2, replace)
margins, dydx(hsgpa) predict(fix(hsgpa)) at(hsgpa = (2(0.1)4)) saving(file4, replace)

*Combine marginsplot
combomarginsplot file1 file2
combomarginsplot file3 file4











