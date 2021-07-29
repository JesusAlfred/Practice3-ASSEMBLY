.text
.global for1
.type for1 function

for1:
MOV r0, #5 //sum
MOV r1, #4 //i

iniciofor:
CMP r1, r0
BPL finfor				//Positive or zero
ADD r1, r1, #1
ADD r1, r1, #1
B iniciofor
finfor:


/*
int sum = 15;
for (int i=0; i < sum; i++)
   i += 1;
*/

B fin


fin:
NOP
BX LR //Return
