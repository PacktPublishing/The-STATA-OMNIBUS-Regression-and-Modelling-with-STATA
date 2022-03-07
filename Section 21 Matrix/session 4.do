*Using Matrices with data

**** EXAMINING AND MANIPULATING STORED SYSTEM MATRICES ****
*Clear
clear

*Load training data
sysuse auto

*Run a regression
reg price mpg weight

*Examine stored matrix infromation
ereturn list
mat list e(b)
mat list e(V)

*Compute correlation matrix from variance matrix
mat C = corr(e(V))
matlist C
estat vce, corr

**** STORING RESULST IN A CUSTOM MATRIX ****
*Clear
clear

*Load training data
sysuse nlsw88

*Store estimates from a loop in a matrix
forvalues i = 8/18 {
	reg wage hours if grade == `i'
		mat R1 = (nullmat(R1), e(b)[1,1])
		mat R2 = (nullmat(R2)\ e(b)[1,1])
		}

	matlist R1
	matlist R2

*Create a dataset from the stored results
clear 
svmat R2, name(results)
tab results
mean results
inspect results

**** LOADING RAW DATA INTO A MATRIX AND THEN COMPUTING STATISTICS ****
*Loading a dataset into a Matrix
*Clear
clear

*Load training data
sysuse auto

*Load mpg into a matrix
mkmat mpg
mat list mpg

*Load foreign weight displacement into matrix X
mkmat foreign weight displacement, matrix(X)
mat list X

*Compute X'Y/(X'X) = beta
matrix b = inv(X'*X) * X'*mpg
matlist b

*Check with regress command
regress mpg foreign weight displacement, noconstant


