	.data
	.text
main:	
	addi	$v0, $0, 5
	syscall
	add	$t0, $0, $v0
	add	$t1, $t0, $t0	
	j	first
loop:
	beq	$t0, $t1, exit
	addi	$a0, $0, '+'
	addi	$v0, $0, 11
	syscall
first:
	add	$a0, $0, $t0
	addi	$v0, $0, 1
	syscall

	add	$t9, $t9, $t0
	addi	$t0, $t0, 1
	j	loop
exit:

	addi	$a0, $0, '='
	addi	$v0, $0, 11
	syscall	

	add	$a0, $0, $t9
	addi	$v0, $0, 1
	syscall
	jr	$ra
