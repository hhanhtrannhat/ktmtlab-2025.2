#s2=a,s3=b
.data
	test: .word 2
.text
	addi s2,zero,0
	addi s3,zero,0
	la s0,test#nap dia chi cua bien word cho s0
	lw s1,0(s0)#nap gia tri cua s0 cho s1
	addi t1,zero,0#t1=0
	addi t2,zero,1#t2=1
	addi t3,zero,2#t3=2
	beq s1,t1,case0
	beq s1,t2,case1
	beq s1,t3,case2
	j default
case0:
	addi s2,s2,1
	j default
case1:
	addi s2,s2,-1
	j default
case2:
	add s3,s3,s3
default:
	addi a7,zero,10
	ecall
	