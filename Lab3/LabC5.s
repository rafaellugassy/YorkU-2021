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
