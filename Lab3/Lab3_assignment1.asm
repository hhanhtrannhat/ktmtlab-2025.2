.text
#i=s1,j=s2,x=t1,y=t2,z=t3
addi s1,zero,3
addi s2,zero,2
addi t1,zero,1
addi t2,zero,2
addi t3,zero,3
start:	
	blt s2,s1,else#if(j<i)then jump else
then:#if i<=j then do bellow
	addi t1,t1,1#x=x+1
	addi t3,zero,1#z=1
	j exit
else:
	addi t2,t2,-1#y=y-1
	mul t3,t3,t3#z=z^2
exit:
	addi a7,zero,10
	ecall
	
