	.globl fini 
	.text 
main:	#--------------------- 
	addi    $v0, $0, 5	# v0 = readInt
	syscall
	add	$t0, $0, $v0
	addi    $t1, $0, 7 	# t1 = 7 
	beq 	$t0, $t1, XX
	sub 	$t2, $t0, $t1	# t2 = t0+t1 
	addi	$v0, $0, 1	# service #1 
	add	$a0, $0, $t2
	syscall
	j YY
XX:	add	$t3, $t0, $t1
	addi	$v0, $0, 1	# service #1 
	add	$a0, $0, $t3
	syscall
YY:	
	#--------------------- 
	addi	$v0, $0, 1	# service #1 
	add	$a0, $0, $t2 	# printInt 
	syscall   		# do print 
	#--------------------- 
fini:	jr	$ra		# return  
