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

	.globl	isPrime
isPrime:
	addi	$v0, $0, 1
	addi	$t0, $0, 2
	addi	$t9, $0, 1
	addi	$t1, $0, 0

loop:
	jal	isFactor
	slt	$t9, $t0, $a0
	addi	$t0, $t0, 1
	beq	$t1, 1, loop
	beq	$t9, $0, loop

	beq	$t1, $0, truep
	j	falsep
truep:
	add	$v0, $0, 1
	j	value
falsep:	
	add	$v0, $0, 0
	j	value
value:
	jr	$ra

	.globl isFactor
isFactor:
	div	$a0, $t0
	mfhi	$t1
	beq	$t1, 0, true
	j	false
true:
	addi	$t1, $0, 1
	j	end
false:	
	addi	$t1, $0, 0
	j	end
end:
	jr	$ra



