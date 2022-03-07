*Clear data
clear

*Load training data
use esoph.dta

*Describe data
describe
summarize

*Tabulate alcohol
tab alcohol

*tabulation
tab case alcohol

*Case-control data, compute odds
tabodds case alcohol
tabodds case alcohol, or 

*Smoking covariate
tab tobacco

*Case-control data, compute odds-ratio with stratification
tabodds case alcohol, adjust(tobacco) 
