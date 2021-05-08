#Project: CSCI 374 Basic Linear Algebra Library in Risc-V
#Description: Scalar addition, subtraction, multiplication, and division
#Contributers: Dylan Newstrum, Taylor Fern, & Tyler Ferron

.data
    int1: .word 3
    int2: .word 4

main:
    lw s1, int1 #Load int1 and 2 into s1 and s2 respectively
    li s2, int2

    mv a1, s1
    mv a2, s2
    jal iadd
    jal isub
    jal imul
    jal idiv


#return register a0
#input a1 and a2
iadd:
    add a0, a1, a2
    ret

isub:
    sub a0, a1, a2
    ret

imul:
    mul a0, a1, a2
    ret

idiv: 
    div a0, a1, a2
    ret