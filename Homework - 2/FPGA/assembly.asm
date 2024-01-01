.data
.code       
loop    ldi 0 0x901
        ldi 5 0x5555
        ld 1 0
        and 3 1 5
        jz loop
        ldi 0 0x900
        ld  0 0
        ldi 2 0xb00
        add 6 0 5
        st 2 6
        jmp loop
