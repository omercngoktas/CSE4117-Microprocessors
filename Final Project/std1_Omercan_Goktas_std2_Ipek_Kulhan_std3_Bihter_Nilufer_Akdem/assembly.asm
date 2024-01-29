.data	
	spash_horiz: 320
	spash_vert: 240
	pl_horiz: 320
	pl_vert: 240
	pl_vert_dir: 1
	pl_horiz_dir: 1
	hori_max: 620
	vert_max: 460
	hori_min: 0
	vert_min: 0
	spash_bm0: 0x0080
	spash_bm1: 0x01C0
	spash_bm2: 0x01C0
	spash_bm3: 0x01C0
	spash_bm4: 0x01C0
	spash_bm5: 0x03E0
	spash_bm6: 0x07F0
	spash_bm7: 0x0FF8
	spash_bm8: 0x1FFC
	spash_bm9: 0x01C0
	spash_bm10: 0x01C0
	spash_bm11: 0x01C0
	spash_bm12: 0x01C0
	spash_bm13: 0x03E0
	spash_bm14: 0x07F0
	spash_bm15: 0x01C0
	pl_bm0: 0x07E0
	pl_bm1: 0x1FF8
	pl_bm2: 0x3FFC
	pl_bm3: 0x7FFE
	pl_bm4: 0x7FFE
	pl_bm5: 0xFFFF
	pl_bm6: 0xFFFF
	pl_bm7: 0xFFFF
	pl_bm8: 0xFFFF
	pl_bm9: 0xFFFF
	pl_bm10: 0x7FFF
	pl_bm11: 0x7FFE
	pl_bm12: 0x7FFE
	pl_bm13: 0x3FFC
	pl_bm14: 0x1FF8
	pl_bm15: 0x07E0
.code
	ldi 2 0x800
	ldi 1 spash_bm0
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm1
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm2
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm3
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm4
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm5
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm6
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm7
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm8
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm9
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm10
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm11
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm12
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm13
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm14
	ld 1 1
	st 2 1
	inc 2
	ldi 1 spash_bm15
	ld 1 1
	st 2 1
	
	ldi 2 0x810
	ldi 1 pl_bm0
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm1
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm2
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm3
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm4
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm5
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm6
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm7
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm8
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm9
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm10
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm11
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm12
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm13
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm14
	ld 1 1
	st 2 1
	inc 2
	ldi 1 pl_bm15
	ld 1 1
	st 2 1
	
	ldi 2 spash_horiz
	ld 2 2
	ldi 1 0xb00
	st 1 2
	ldi 2 spash_vert
	ld 2 2
	ldi 1 0xb01
	st 1 2
	ldi 2 pl_horiz
	ld 2 2
	ldi 1 0xb02
	st 1 2
	ldi 2 pl_vert
	ld 2 2
	ldi 1 0xb03
	st 1 2
	ldi 7 0xd00
	ldi 0 0x7f2
	ldi 1 isr2
	st  0 1
main
	ldi 1 0xb06
	ld 1 1
	ldi 2 0x0001
	sub 1 1 2
	jz pl_timer
	ldi 4 0x0001
	ldi 3 0x0b08
	ld 3 3
	and 3 3 4
	jz main
	ldi 1 0x0b07
	ld 1 1
	ldi 2 0x001d
	xor 3 1 2
	jz spash_up
	ldi 1 0x0b07
	ld 1 1
	ldi 2 0x001b
	xor 3 1 2
	jz spash_down
	ldi 1 0x0b07
	ld 1 1
	ldi 2 0x001c
	xor 3 1 2
	jz spash_left
	ldi 1 0x0b07
	ld 1 1
	ldi 2 0x0023
	xor 3 1 2
	jz spash_rgt
	jmp main

spash_up	
	ldi 4 spash_vert
	ld 4 4
	ldi 1 0x0004
	sub 4 4 1
	ldi 2 vert_min
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz main
	ldi 1 0x0b01
	st 1 4
	ldi 1 spash_vert
	st 1 4
	jmp main

spash_left	
	ldi 4 spash_horiz
	ld 4 4
	ldi 1 0x0004
	sub 4 4 1
	ldi 2 hori_min
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz main
	ldi 1 0x0b00
	st 1 4
	ldi 1 spash_horiz
	st 1 4
	jmp main

spash_down	
	ldi 4 spash_vert
	ld 4 4
	ldi 1 0x0004
	add 4 4 1
	ldi 2 vert_max
	ld 2 2
	mov 3 4
	sub 2 2 3
	jz main
	ldi 1 0x0b01
	st 1 4
	ldi 1 spash_vert
	st 1 4
	jmp main

spash_rgt	
	ldi 4 spash_horiz
	ld 4 4
	ldi 1 0x0004
	add 4 4 1
	ldi 2 hori_max
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz main
	ldi 1 0x0b00
	st 1 4
	ldi 1 spash_horiz
	st 1 4
	jmp main

pl_timer	
	ldi 1 0xb06
	ldi 2 0x0000
	st 1 2
	jmp pl_up
	jmp main

pl_rev_up	
	ldi 4 pl_vert_dir
	ldi 1 0x0000
	st 4 1
	jmp pl_timer

pl_rev_down	
	ldi 4 pl_vert_dir
	ldi 1 0x0001
	st 4 1
	jmp pl_timer

pl_rev_rgt	
	ldi 4 pl_horiz_dir
	ldi 1 0x0000
	st 4 1
	jmp pl_timer

pl_rev_left	
	ldi 4 pl_horiz_dir
	ldi 1 0x0001
	st 4 1
	jmp pl_timer

pl_up	
	ldi 1 pl_vert_dir
	ld 1 1
	ldi 2 0x0001
	and 1 1 2
	jz pl_down
	ldi 4 pl_vert
	ld 4 4
	ldi 1 0x0014
	sub 4 4 1
	ldi 2 vert_min
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz pl_rev_up
	ldi 1 0x0b03
	st 1 4
	ldi 1 pl_vert
	st 1 4
	jmp pl_rgt

pl_down	
	ldi 4 pl_vert
	ld 4 4
	ldi 1 0x0014
	add 4 4 1
	ldi 2 vert_max
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz pl_rev_down
	ldi 1 0x0b03
	st 1 4
	ldi 1 pl_vert
	st 1 4
	jmp pl_rgt

pl_rgt	
	ldi 1 pl_horiz_dir
	ld 1 1
	ldi 2 0x0001
	and 1 1 2
	jz pl_left
	ldi 4 pl_horiz
	ld 4 4
	ldi 1 0x000a
	add 4 4 1
	ldi 2 hori_max
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz pl_rev_rgt
	ldi 1 0x0b02
	st 1 4
	ldi 1 pl_horiz
	st 1 4
	jmp main

pl_left	
	ldi 4 pl_horiz
	ld 4 4
	ldi 1 0x000a
	sub 4 4 1
	ldi 2 hori_min
	ld 2 2
	mov 3 4
	sub 3 3 2
	jz pl_rev_left
	ldi 1 0x0b02
	st 1 4
	ldi 1 pl_horiz
	st 1 4
	jmp main
