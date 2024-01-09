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
        jmp display

left    call incr
        call store
        jmp display

display	ldi 0 0x900
        ld 0 0
        call to_bcd
        ldi 1 0xb00
        st 1 0
        jmp main_l

divisin push 1
        push 2
        push 4
        push 5
        push 6
        ldi 0 0xffff
        ldi 4 0x8000
div_lop mov 3 1
        inc 0
        sub 1 1 2
        and 5 1 4
        jz div_lop
        pop 6
        pop 5
        pop 4
        pop 2
        pop 1
        ret

store   ldi 1 0x900
        st 1 0
        ret

incr    ldi 0 0x900
        ld 0 0
        inc 0
        ret

mult    ldi 1 0x0000
        ldi 0 0x900
        ld 0 0
mult_l  add 1 1 0
        dec 2
        jz mult_r
        jmp mult_l
mult_r  mov 0 1
        ret

shl_loo add 0 0 0
        dec 2
        jz shl_ret
        jmp shl_loo
shl_ret ret

to_bcd  mov 1 0
        ldi 2 1000
        call div_lop

        ldi 1 12
        call shl_loo
        mov 6 0

        mov 1 3
        ldi 2 100
        call div_lop

        ldi 1 8
        call shl_loo
        or 6 6 0

        mov 1 3
        ldi 2 10
        call div_lop

        ldi 1 4
        call shl_loo
        or 6 6 0

        or 6 6 3
        mov 0 6
        ret
