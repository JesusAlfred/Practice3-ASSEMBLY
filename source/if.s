.text
.global vfnCompareNumbers
.type vfnCompareNumbers function

vfnCompareNumbers:
//r0 = bNumber1			r1 = bNumber2		r2 = ubCounter
MOV r3, #0
CMP r0, r1

//r3 = ubCounter

BMI menorque
BEQ igual
B mayor

menorque:
ADD r3, r3, #1
B fin

igual:
ADD r3, r0, r1
B fin

mayor:
SUB r3, r3, #1

fin:
//ubCounter = r3
BX LR //Return



/*
void vfnCompareNumbers (usigned char bNumber1, unsigned char bNumber2)
{
if (bNumber1 < bNumber2)
{
    ubCounter++;
}
else if (bNumber1 == bNumber2)
{
    ubCounter = bNumber1 + bNumber2;
}
else
{
    ubCounter--;
}

}

*/
