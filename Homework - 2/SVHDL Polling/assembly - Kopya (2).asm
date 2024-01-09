.data
.code   
        ldi 7 0x01c0
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

right   ldi 2 0x0002
        call mult
        call display
        jmp main_l

left    call incr
        call display
        jmp main_l

display	ldi 1 0xb00
        st 1 0
        ret

store   ldi 1 0x900
        st 1 0
        ret

incr    ldi 0 0x900
        ld 0 0
        inc 0
        call store
        ret

mult    ldi 1 0x0000
        ldi 0 0x900
        ld 0 0
mult_l  add 1 1 0
        dec 2
        jz mult_r
        jmp mult_l
mult_r  mov 0 1
        call store
        ret

shl     ldi 2 1
shl_l   add 0 0 0
        sub 1 1 2
        jz shl_r
        jmp shl_l
shl_r   ret