*Matrix functions

*Clear
clear

*Creating two matrices
matrix A = (3, 2, 2 \ 1, 2, 3 \ 2, 2, 3)
matrix B = (2, 2, 2 \ 2, 2, 2 \ 2, 2, 2)

*Basic matrix functions that produce matrix
	*Identidy matrix
	mat I3 = I(3)
	mat list I3
	
	*Inverse matrix
	mat invA = inv(A)
	mat list invA
	
	mat invB = inv(B)
	
	*Random numbers
	mat R = matuniform(5,5)
	mat list R
	
	*Diagonal of A
	mat D = diag(vecdiag(A))
	mat list D
	
	*Correlation of variance
	mat C = corr(B)
	mat list C
	
*Basic matrix functions that produce scalar
	*Determinant
	mat det = det(B)
	mat list det
	di det(B)
	
	*Symmetric or not
	di issymmetric(B) 
	di issymmetric(A)
	
	*Row and cols 
	di rowsof(A)
	di colsof(A)
	
