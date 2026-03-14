#s1=i,s5=sum,s3=n
.data
A: .word 1,2,3,4,0,6,7,8,9#a[]={1,2,3,4,5,6,7,8,9}
.text
addi s1,zero,0#n=0
addi s5,zero,0#sum=0
la s2,A#gan dia chi cua mang A cho thanh ghi s2
li s3,9#s3=n, so phan tu cua mang
li s4,1#i+=1 buoc nhay cua vong lap
loop:
	add t1,s1,s1#t1=2i
	add t1,t1,t1#t1=4i(cach cong 4i nhanh ma khong can dung x)
	add t1,t1,s2#t1 gio se tro den cac phan tu cua mang theo siso
	lw t0,0(t1)#load gia tri cua mang vao t0
	beq t0,zero,endloop#if(a[i]==0)then break;
	add s5,s5,t0#sum+=n
	add s1,s1,s4#n+=1
	j loop
endloop:
	addi a7,zero,10#ket thuc chuong trinh
	ecall
