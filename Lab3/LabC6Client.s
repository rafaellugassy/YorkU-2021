	.text 
	
main: 	sw 	$ra, 0($sp) 
	addi 	$sp, $sp, -4 	
	lw	$a0, MAX($0) 
	addi 	$v0, $0, 1 
	syscall 

	jal	println

	lbu 	$a0, SIZE($0) 
	addi 	$v0, $0, 1 
	syscall 

	jal	println

	jal 	getCount 
	add	$a0, $0, $v0 
	addi	$v0, $0, 1 
	syscall 

	jal	println

	addi	$v0, $0, 5	#input
	syscall
	add	$t0, $0, $v0
	add	$a0, $0, $t0
	jal	setCount

	jal 	getCount 
	add	$a0, $0, $v0 
	addi	$v0, $0, 1 
	syscall 	

	jal	println
	
	addi	$v0, $0, 5	#input
	syscall
	add	$t0, $0, $v0
	add	$a0, $0, $t0
	jal 	signum
	add	$a0, $0, $v0
	addi	$v0, $0, 1
	syscall

	jal	println

	jal 	getCount 
	add	$a0, $0, $v0 
	addi	$v0, $0, 1 
	syscall 

	addi 	$sp, $sp, 4 
	lw 	$ra, 0($sp) 
	jr 	$ra 
