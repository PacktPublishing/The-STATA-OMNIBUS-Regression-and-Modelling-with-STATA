*Clear data
clear

*Load training data
webuse lowbirth

*Describe data
describe
summarize

*List data 
list in 1/12, sepby(pairid)

*Keep relevant variables
keep pairid smoke low age

*Reshape from long to wide
reshape wide smoke age, i(pairid) j(low)

*rename variables
rename smoke1 case
rename smoke0 control

*Matched control-case, compute odds-ratio 
mcc case control

