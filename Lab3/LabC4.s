	.globl	MAX 
	.globl	SIZE 
		#----------------------------- 
	.data
count:	.word	0
SIZE:	.byte	32; 
MAX: 	.word	2147483647; 
half:	.half	2B;
		#----------------------------- 
	.text 
	.globl	getCount 
#----------------------------- 
	.text 
getCount:	#----------------------------- 
	lw	$v0, count($0) 
	jr 	$ra 
