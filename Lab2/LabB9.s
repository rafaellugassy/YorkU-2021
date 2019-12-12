	.globl fini 
	.text 
main:	#--------------------- 
	add	$s0, $0, 0
	addi	$v0, $0, 5	#input
	syscall
	add	$t0, $0, $v0
loop:	#---------------------
	slt	$t9, $t5, $t0
	beq	$t9, $0, print
	add	$s0, $s0, $t5
	add	$t5, $t5, 1
	j loop
print:	#---------------------
	addi	$v0, $0, 1
	add	$a0, $0, $s0
	syscall
	
fini:	jr	$ra		# return  
