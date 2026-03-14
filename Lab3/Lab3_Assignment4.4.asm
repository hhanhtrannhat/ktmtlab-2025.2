.text
#i=s1,j=s2,x=t1,y=t2,z=t3
addi s1,zero,8
addi s2,zero,9
addi t1,zero,1
addi t2,zero,2
addi t3,zero,3
addi t4,zero,6#m=6
addi t5,zero,7#n=7
start:	
	add s3,s1,s2#s3=i+j
	add t6,t4,t5#t5=m+n
	bge t6,s3,else#if(i+j<=m+n)then jump else
then:#if i+j>m+n then do bellow
	addi t1,t1,1#x=x+1
	addi t3,zero,1#z=1
	j exit
else:
	addi t2,t2,-1#y=y-1
	mul t3,t3,t3#z=z^2
exit:
	addi a7,zero,10
	ecall
	
