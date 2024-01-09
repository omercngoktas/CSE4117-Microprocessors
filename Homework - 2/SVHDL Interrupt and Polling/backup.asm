.data
.code
        ldi 7 0x700
        ldi 0 0x7f2
        ldi 1 isr
        st  0 1

main_l  sti
        ldi 2 0x901
        ldi 3 0x0001
        ld 2 2
        sub 2 2 3
        jz left_b
        call display
        jmp main_l

left_b  cli
        ldi 3 0x900
        ld 3 3
        inc 3
        call store
        sti
        jmp main_l

shl_loo add 3 3 3
        dec 2
        jz shl_ret
        jmp shl_loo
shl_ret ret

store   ldi 4 0x900
        st 4 3
        ret

display ldi 3 0x900
        ld 3 3
        ldi 1 0xb00
        st 1 3
        ret

isr     cli
        ldi 3 0x900
        ld 3 3
        ldi 2 0x0001
        call shl_loo
        call store
        sti
        iret
