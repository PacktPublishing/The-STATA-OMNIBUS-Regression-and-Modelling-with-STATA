*Matrix subscripting

*Clear
clear

*Creating two matrices
	matrix A = (3, 2, 2 \ 1, 2, 3 \ 2, 2, 3)
	matrix B = (2, 2 \ 2, 2\ 2, 2)

*Basic supscripting
	*One element as scalar
	di A[1,1]
	
	*One element in matrix computation
	mat C = A / A[1,2]
	mat list C
	
	*Replacing one element
	mat A[2,2] = 99
	mat list A
	
*Complex subscripting
	*Multiple elements
	mat D = A[1..2, 1..2]
	mat list D
	
	mat E = A[2..., 2...]
	mat list E
	
	mat F = A[1..2, 1...]
	mat list F
	
	*Replacing multiple elements
	mat list A
	mat list B
	mat A[1,1] = B
	mat list A
