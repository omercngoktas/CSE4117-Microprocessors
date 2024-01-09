.data
.code   
        ldi 7 0x0100
main_l	ldi 4 0x903
        ldi 1 0x0001
        ld 4 4
        sub 4 4 1
        jz right

        ldi 0 0x901
        ldi 1 0x0001
        ld 0 0
        sub 0 0 1
        jz left
        jmp main_l

right   ldi 2 1
        ldi 0 0x900
        ld 0 0
        call shl_loo
        call store
        ldi 1 0x900
        ld 1 1
        jmp to_dec

left    call incr
        call store
        ldi 1 0x900
        ld 1 1
        jmp to_dec

display ldi 1 0xb00
        st 1 2
        jmp main_l

shl_loo add 0 0 0
        dec 2
        jz shl_ret
        jmp shl_loo
shl_ret ret

store   ldi 1 0x900
        st 1 0
        ret

to_dec  ldi 4 0x0010
        ldi 2 0x0000
alt_loop        ldi 0 0x000f
        and 0 0 2
        ldi 5 0x0004
        sub 0 5 0
        ldi 5 0x8000
        and 0 0 5
        jz check2
        jmp add3_1
check2  ldi 0 0x00f0
        and 0 0 2
        ldi 5 0x0040
        sub 0 5 0
        ldi 5 0x8000
        and 0 0 5
        jz check3
        jmp add3_2
check3  ldi 0 0x0f00
        and 0 0 2
        ldi 5 0x0400
        sub 0 5 0
        ldi 5 0x8000
        and 0 0 5
        jz check4
        jmp add3_3
check4  ldi 0 0xf000
        and 0 0 2
        ldi 5 0x4000
        sub 0 5 0
        ldi 5 0x8000
        and 0 0 5
        jz phase2
        jmp add3_4
phase2  add 2 2 2
        ldi 5 0x8000
        and 0 1 5
        jz msb0
        ldi 5 0x0001
        add 2 2 5
msb0    add 1 1 1
        dec 4
        jz display
        jmp alt_loop
add3_1  ldi 5 0x0003
        add 2 2 5
        jmp check2
add3_2  ldi 5 0x0030
        add 2 2 5
        jmp check3
add3_3  ldi 5 0x0300
        add 2 2 5
        jmp check4
add3_4  ldi 5 0x3000
        add 2 2 5
        jmp phase2

incr    ldi 0 0x900
        ld 0 0
        inc 0
        ret
