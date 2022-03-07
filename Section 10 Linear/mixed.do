*Load data 
use https://www.stata-press.com/data/r16/pig, clear

*Describe data and summarize
describe
summarize

*Examine raw data
tw (scatter weight week, c(ascending))

*Standard OLS
reg weight week 
predict fit, xb
tw (scatter weight week, c(ascending) lcolor(%25) mcolor(%25)) (scatter fit week, c(ascending))

*Help mixed 
help mixed

*Mixed effects regression
mixed weight week
predict resid, resid
summarize resid, d
predict fit2, fitted
tw (scatter weight week, c(ascending) lcolor(%25) mcolor(%25)) (scatter fit2 week, c(ascending))

*Mixed effects regression with random intercept
mixed weight week, || id:
predict fit3, fitted
tw (scatter weight week, c(ascending) lcolor(%25) mcolor(%25)) (scatter fit3 week, c(ascending))

*Mixed effects regression with random intercept and slope
mixed weight week || id: week
predict fit4, fitted
tw (scatter weight week, c(ascending) lcolor(%25) mcolor(%25)) (scatter fit4 week, c(ascending))

*Graphing distribution of estimated slopes
tw (fn y = normalden(x,6.209896,sqrt(.3680668)), range(2 10)) 












