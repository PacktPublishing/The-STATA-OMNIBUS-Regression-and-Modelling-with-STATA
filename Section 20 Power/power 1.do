*Help Power
help power

*Compute sample size required for experiment 
power twomeans 1000 1100, power(0.8) sd(200)

*Unequal sample sizes
power twomeans 1000 1100, power(0.8) nratio(0.5) sd(200) 

*More power, lower alpha
power twomeans 1000 1100, alpha(0.01) power(0.9) nratio(0.5) sd(200) 

*Different outcomes of treatment group
power twomeans 1000 (1025 1050 1075 1100), alpha(0.01) power(0.9) nratio(0.5) sd(200) 

*Many different outcomes of treatment group
power twomeans 1000 (1025/1100), alpha(0.01) power(0.9) nratio(0.5) sd(200) 

*Many different outcomes of treatment group graphed
power twomeans 1000 (1025/1100), alpha(0.01) power(0.9) nratio(0.5) sd(200) graph

*Many different outcomes of treatment group with different power and alpga levels graphed 
power twomeans 1000 (1025/1100), alpha(0.05 0.01) power(0.8 0.9) nratio(0.5) sd(200) graph

