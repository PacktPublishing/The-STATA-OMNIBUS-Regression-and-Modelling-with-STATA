*Open auto training data
sysuse auto, clear

*Run a normal regression
reg price mpg headroom trunk weight length turn displacement

*Run a normal regression with beta coefficients
reg price mpg headroom trunk weight length turn displacement, beta

*Install user written programme std_beta
net install "http://fmwww.bc.edu/RePEc/bocode/s/std_beta.pkg", replace

*Standardized estimates
stdBeta

*Standardized estimates with standard errors
stdBeta, se
