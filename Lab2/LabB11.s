		.text 
main:    #--------------------- 
	addi	$t0, $0, -60 
	sra 	$a0, $t0, 1 
	addi	$v0, $0, 1
	syscall
	addi	$v0, $0, 11
	addi 	$a0, $0, ' ' 
	syscall
	sll 	$a0, $t0, 1 
	addi	$v0, $0, 1
	syscall
	#--------------------- 
fini: 	jr 	$ra 

