*Help power
help power

*Sample size for a simple linear regression slope
power oneslope 0 0.05, sdx(7.5) sdy(4) power(0.8) alpha(0.05)

*Different sample sizes for a simple linear regression slope with different alpha's
power oneslope 0 0.05, sdx(7.5) sdy(4) power(0.8) alpha(0.001 0.01 0.05)

*Compute power for simple linear regression
power oneslope 0 0.05, n(500 1000 1500 2000) sdx(7.5) sdy(4) alpha(0.05)

*Minimum detectable effect size for a simple linear regression slope
power oneslope 0, sdx(7.5) sdy(4) n(1000) alpha(0.05) power(0.8)

*Example
sysuse auto, clear

*example regression
reg price mpg, beta

*Smallest sample size to repeat analysis
power oneslope 0 -.4685967, sdx(1) sdy(1) alpha(0.05) power(0.8)

*Smallest coefficient detectable with current sample
power oneslope 0, n(74) sdx(1) sdy(1) alpha(0.05) power(0.8)


