	.data
	.text
main:
	addi	$v0, $0, 5
	syscall
	add	$t0, $0, $v0
	
	addi	$v0, $0, 5
	syscall
	add	$t1, $0, $v0

	slt	$t2, $t0, $0
	slt	$t3, $t1, $0

	beq	$t2, $t3, check
	j	negres

check:
	bne	$t2, 0, negres
	j	pos
negres:
	addi	$a0, $0, -1
	addi	$v0, $0, 1
	syscall
	j	exit

pos:
	addi	$a0, $0, 1
	addi	$v0, $0, 1
	syscall
	j	exit


exit:
	jr 	$ra
