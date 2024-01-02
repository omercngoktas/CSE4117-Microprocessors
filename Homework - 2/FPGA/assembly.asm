.data
.code       
 loop    ldi 0 0x901
         ldi 5 0x0001
         ld 1 0
         and 3 1 5
         jz loop
         ldi 0 0x900
         ld  0 0
         ldi 2 0xb00
	 add 5 5 1
	 and 7 5 0x7777
	 jz 7 reset
         add 6 0 5
         st 2 6
         jmp loop

reset  ldi 5 0x0000
         jmp loop