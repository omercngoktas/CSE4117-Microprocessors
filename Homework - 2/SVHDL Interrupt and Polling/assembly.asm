.data
.code
        ldi 7 0x700
        ldi 0 0x7f2
        ldi 1 isr
        st  0 1
main    
        sti
        ldi 2 0x901
        ldi 3 0x0001
        ld 2 2
        sub 2 2 3
        jz left_button
        jmp bcd_converter

left_button     
        ldi 3 0x900
        ld 3 3
        inc 3
        call save_value
        jmp main

isr                  
        cli
        ldi 3 0x900
        ld 3 3
        add 3 3 3
        call save_value
        sti
        iret

save_value      
        ldi 4 0x900
        st 4 3
        ret

display_on_ss7
        ldi 1 0xb00
        st 1 2
        jmp main

bcd_converter   
        ldi 1 0x900
        ld 1 1
        ldi 4 0x0010
        ldi 2 0x0000
digit_loop        
        ldi 6 0x000f
        and 6 6 2
        ldi 5 0x0004
        sub 6 5 6
        ldi 5 0x8000
        and 6 6 5
        jz control2
        jmp add_3_on_1
control2          
        ldi 6 0x00f0
        and 6 6 2
        ldi 5 0x0040
        sub 6 5 6
        ldi 5 0x8000
        and 6 6 5
        jz control3
        jmp add_3_on_10
control3          
        ldi 6 0x0f00
        and 6 6 2
        ldi 5 0x0400
        sub 6 5 6
        ldi 5 0x8000
        and 6 6 5
        jz control4
        jmp add_3_on_100
control4          
        ldi 6 0xf000
        and 6 6 2
        ldi 5 0x4000
        sub 6 5 6
        ldi 5 0x8000
        and 6 6 5
        jz digit
        jmp add_3_on_1000
digit          
        add 2 2 2
        ldi 5 0x8000
        and 6 1 5
        jz most_significant_bit
        ldi 5 0x0001
        add 2 2 5
most_significant_bit            
        add 1 1 1
        dec 4
        jz display_on_ss7
        jmp digit_loop
add_3_on_1
        ldi 5 0x0003
        add 2 2 5
        jmp control2
add_3_on_10
        ldi 5 0x0030
        add 2 2 5
        jmp control3
add_3_on_100
        ldi 5 0x0300
        add 2 2 5
        jmp control4
add_3_on_1000
        ldi 5 0x3000
        add 2 2 5
        jmp digit
