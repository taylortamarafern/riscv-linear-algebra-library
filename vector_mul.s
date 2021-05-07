.data
n: .word 3
vector1: .word 5,4,6,
vector2: .word 2,4,6,
vector3: .word 0,0,0,

.text
	la  s0, n
    lw, s0, 0(s0) # s0 is n
    la s1, vector1 #load vector1 into s1
    la s2, vector2 #load vector2 into s2
    la s3, vector3
    mv t0, s1
    mv t1, s2
    mv t3, s3
    li t2, 0
    #for some reason only adds the first number in
    #vector2 to the entirety of vector1
    
mulLoop:
	beq t2, s0, endLoop
	lw a1, 0(t0)
    lw a2, 0(t1)
    mul a1, a1, a2
    li a0, 1
    ecall
    li a1, ','
    li a2, ','
    li a0, 11
    addi t0, t0, 4
    addi t1, t1, 4
    addi t2, t2, 1
    ecall
    j mulLoop
    
endLoop:
	li, a1, '\n'	#
    li a0, 11		# printing a new line
    ecall			#
	mv a1, t1
    li a0, 1
    ecall
    li a0, 10
    ecall
