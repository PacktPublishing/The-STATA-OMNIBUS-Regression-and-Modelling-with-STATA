*Matrix operations

*Clear
clear

*Help Matrix
help matrix

*Creating some matrices
matrix A = (1, 2, 3 \ 4, 5, 6 \ 7, 8, 9)
matrix B = (2, 2, 2 \ 2, 2, 2)
matrix V1 = (1, 1, 2, 2, 3, 3)
matrix V2 = (1\ 1\ 2\ 2\ 3\ 3)
matrix M = (., 1 \ ., .)
matrix C = (log(1), log(10), log(100) \ sqrt(10), 2+2, ((9+1)/5))

*Matrix utility
mat dir
matrix rename C D
mat list A 
mat list B
mat list V1
mat list V2
mat list M
mat list D
matlist A

*Basic matrix computation
	*Addition
	mat AplusA = A + A
	mat list AplusA

	*Subtraction
	mat BminusB = B - B
	mat list BminusB

	*Multiplication by a scalar
	mat Atimes2 = A * 2
	mat list Atimes2	
	
	*Multiplication by a matrix
	mat AtimesA = A * A
	mat list AtimesA
	
	*Division by a scalar
	mat Bdivided2 = B/2
	mat list Bdivided2
	
	*Kronecker product
	mat AkronB = A#B
	mat list AkronB
	
	*Transposing
	mat BT = B'
	mat list B
	mat list BT
	
	*Negation
	mat Bmin = -B
	mat list Bmin

	*Concatenation
		*Column Join
	mat BB1 = B,B
	mat list BB1
		*Row Join
	mat BB2 = B\B
	mat list BB2
		
		
		
	
	
	
