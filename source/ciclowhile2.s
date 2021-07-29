.text
.global while1
.type while1 function

while1:
MOV r0, #0 //n = 20
SUB r0, r0, #2
iniciowhile:
MOVS r1, r0
SUB r0, r0, #1
CMP r1, #0

BNE op			//si es diferente de 0 se hace la op
B finwhile
op:
NOP

B iniciowhile	//Equal, last flag setting result was zero


finwhile:


/*
int n = 20;
while (n--);

*/
B fin


fin:
BX LR //Return
