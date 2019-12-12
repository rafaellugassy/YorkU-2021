	.text 
main:	#--------------------- 
	addi 	$t0, $0, 60 
	addi	$t1, $0, 7 
	div	$t0, $t1   
	mflo  	$a0
	addi	$v0, $0, 1
	syscall
	addi	$v0, $0, 11
	addi	$a0, $0, ' '
	syscall
	addi	$v0, $0, 1
	mfhi	$a0
	syscall
	addi	$v0, $0, 11
	addi	$a0, $0, ' '
	syscall
	mult	$t0, $t1   
	mflo  	$a0
	addi	$v0, $0, 1
	syscall
	addi	$v0, $0, 11
	addi	$a0, $0, ' '
	syscall
	addi	$v0, $0, 1
	mfhi	$a0
	syscall
	jr	$ra		# return  	
	

