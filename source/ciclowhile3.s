.text
.global while2
.type while2 function

while2:
MOV r0, #0 //n = 1//-1 = FFFF FFFF
MOV r1, #0

SUB r0, r0, #3


iniciowhile:

ADD r0, r0, #1
NOP
CMP r0, r1
BPL finwhile

B iniciowhile
finwhile:


/*
int n = 1;
do
{
   n++;
}
while (n < 0)
*/
B fin


fin:
BX LR //Return
