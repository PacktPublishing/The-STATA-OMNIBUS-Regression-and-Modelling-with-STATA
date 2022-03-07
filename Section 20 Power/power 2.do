*Compute power for given sample size
power twomeans 1000 1100, sd(200) n(100)

*Compute effect size for given sample size
power twomeans 1000 , sd(200) n(100) power(0.8)

*Compute effect size for given sample sizes and power levels
power twomeans 1000 , sd(200) n(50/200) power(0.8 0.9) graph

*An example with a prior experiment
use http://www.stata-press.com/data/r16/genderpsych.dta
describe
ttest y1, by(gender)

*Compute sample size
power twomeans 15.96, diff(3.625) sd1(2.27) sd2(3.02) power(0.9) alpha(0.01)

*Compute effect size
power twomeans 15.96, sd1(2.27) sd2(3.02) n(20) power(0.9) alpha(0.01)
