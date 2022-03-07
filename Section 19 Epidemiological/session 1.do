*Clear data
clear

*Load training data
use https://www.stata-press.com/data/r16/irxmpl

*Describe data
describe
summarize
list

*Incidence Rates using data
ir cases exposed time

*Immediate Incidence Rates
iri 15 41 19017 28010 

*Incidence Rates using stratified data
*Clear and load data
clear
webuse dollhill2

*Describe data
describe
summarize
list

*Incidence Rates using data
ir deaths smokes pyears

*Incidence Rates stratified by age
ir deaths smokes pyears, by(age) 

*Incidence Rates stratified by age with weighting
sort smokes age
list
*Weights proportional to person-time of exposed group
ir deaths smokes pyears, by(age) istandard
*Weights proportional to person-time of unexposed group
ir deaths smokes pyears, by(age) estandard
*Weights equal for each group
generate weight = 1
ir deaths smokes pyears, by(age) standard(weight)







