*Clear data
clear

*Load training data
use https://www.stata-press.com/data/r16/csxmpl, clear

*Describe data
describe
summarize
list

*Tabulate data
tab case exp
table case exp, contents(mean pop) 

*Compute risk and risk differences
cs case exp [fw=pop]
cs case exp [fw=pop], or exact

*Load individual neonatal death data and summarize
clear
use neonatal.dta 
describe
summarize

*Explore Boday Mass Index variable
tab bmi

*Genereate Obese dummy variable
gen obese = 1 if bmi == 4
replace obese = 0 if bmi == 2

*Compute risk and risk differences
cs died obese, or

*Logistic regression 
logit died obese, or

*Stratify risk by parity 
tab parity
cs died obese, by(parity) 

*Stratification via logit model
logit died obese, or
logit died obese parity, or












