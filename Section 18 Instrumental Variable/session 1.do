*Simulate small dataset with endogenous relationship
clear
set obs 1000
set seed 1234
gen e1 = rnormal()
gen e2 = rnormal()
gen z = rnormal()
gen x = rnormal() + 1*e1 + 1*z
gen y = 1 + 1*x + (1*e1 + 1*e2)

*Standard OLS
regress y x

*Standard OLS with controls
regress y x e1

*Help ivregress
help ivregress

*Instrumental variable regression
ivregress 2sls y (x = z)

*Instrumental variable regression with first stage shown
ivregress 2sls y (x = z), first

*Post-estimation 
estat firststage  
estat endogenous  

*Instrumental variable regression, GMM
ivregress gmm y (x = z), first 

*Loading training data
clear
webuse class10

*Describe data
describe

*Standard OLS
regress gpa income hsgpa

*User-written command ivreg2
xi: ivreg2 gpa income (hsgpa = i.hscomp), first









