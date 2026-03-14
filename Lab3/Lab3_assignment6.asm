#int a[],m=0
#for(int i=0;i<n;i++)
#if(abs(a[i])>=m)m=a[[i]
.data
A: .word -1,2,-4,-55,4,1,24,5,12#int a[]
.text
addi s1,zero,0#i=0
addi s2,zero,9#n=9
addi s4,zero,0#max=0
la s3,A#s3 lay dia chi cua A
loop:
bge s1,s2,else#i>j then break
add t0,s1,s1#t0=2i
add t1,t0,t0#t1=4i
add t2,t1,s3#t2 gio mang dia chi cua A+4i
lw t3,0(t2)#load gia tri cua A tuan tu cho t3
blt t3,zero,abs#chuyen toi ham abs
afterabs:
bge t3,s4,else1#t3>=max thi chuyen toi else1
afterelse1:
addi s1,s1,1
j loop
abs:
sub t3,zero,t3
j afterabs
else1:
add s4,zero,t3
j afterelse1
else:
addi a7,zero,10
ecall



