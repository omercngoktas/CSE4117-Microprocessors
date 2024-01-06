.data
.code   
loop	ldi 0 0x901
	ldi 5 0x0001
	ld 1 0
	and 3 1 5
	jz loop
	ldi 5 0xb00
	ldi 2 0x900
	ld 2 2
	st 5 2
	jmp loop
