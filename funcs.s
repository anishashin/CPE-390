	.global _Z5counti
_Z5counti:
	mov 	r1, #1
.L1:
	add	r1, r1, #1
	cmp	r1, r0
	bne	.L1
	bx	lr	

	.global _Z9countDowni
_Z9countDowni:
	mov	r1, r0
.L2:
	subs	r1, r1, #1
	bne	.L2
	bx	lr

	.global _Z3sumii
_Z3sumii:
	mov	r2, #0
	add	r1, r1, #1
.L3:
	add	r2, r2, r0
	add	r0, r0, #1
	cmp	r0, r1
	bne	.L3
	mov	r0, r2
	bx	lr

	.global _Z4facti
_Z4facti:
	mov	r1, #1
	mov	r2, #1
	add	r0, r0, #1
.L4:
	mul	r2, r2, r1
	add	r1, r1, #1
	cmp	r1, r0
	blt	.L4
	mov	r0, r2
	bx 	lr
