*Clear data
clear

*Load training data
use lbw1

*Describe data
describe
summarize

*Tabulate data
tab low smoke

*Compute odds-ratio
cc low smoke

*Compute odds-ratio with stratification
cc low smoke, by(race)

*Compute odds-ratio with multiple stratification
gen old = (age >= 25)
egen oldrace = group(old race), label
cc low smoke, by(oldrace)

*Logistic regression
logistic low smoke old i.race i.ht
