	.data
	.text
main:

	addi	$v0, $0, 5
	syscall
	add	$t0, $0, $v0
	andi	$t0, $t0, 0x0000ffff


loop:	
	beq	$t1, 16, exit

	addi	$t9, $0, 1
	sll	$t9, $t9, $t1
	and	$t8, $t9, $t0
	beq	$t8, $0, pzero
	j	pone
pone:
	addi	$a0, $0, 1
	addi	$v0, $0, 1
	syscall
	j	after

pzero:
	add	$a0, $0, $0
	addi	$v0, $0, 1
	syscall
	j	after

after:	
	addi	$t1, $t1, 1
	j	loop

exit:
	jr	$ra


