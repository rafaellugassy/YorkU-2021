	.globl	MAX 
	.globl	SIZE 
		#----------------------------- 
	.data
MAX: 	.word	2147483647; 
SIZE:	.byte	32; 
count:	.word	0
half:	.half	2B;
		#----------------------------- 
	.text 
	.globl	getCount 
	#----------------------------- 
	.text 
getCount:	#----------------------------- 
	lw	$v0, count($0) 
	jr 	$ra 

.text 
	.globl	setCount 
	#----------------------------- 
	.text 
setCount:	#----------------------------- 
	sw	$a0, count($0) 
	jr 	$ra 

	.globl	println
println:
        addi    $a0, $0, 0xA
        addi    $v0, $0, 11
        syscall
	jr	$ra

	.globl	signum
signum:
 	slt	$t9, $a0, $0
	beq	$t9, 1, less
	beq	$a0, $0, equal
	j more
less:
	addi	$v0, $0, 1
	j	return
equal:
	addi	$v0, $0, 0
	j	return
more:
	addi	$v0, $0, -1
	j	return
return:	lw  	$t5, count($0)
    	addi 	$t5, $t5, 1
     	sw  	$t5, count($0)
	jr	$ra

