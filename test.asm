.data
s1:	.asciiz	"semir hamid"
s0:	.asciiz	"birhanu nega"
.text
main:
sub $sp, $sp, 60
jal A_Main
add $sp, $sp, 60
li $v0, 10
syscall
L_0:
A_Main:
L_1:
sw $ra, 0($sp)
L_2:
lw $t0, 8($sp)
li $t0,1
sw $t0, 8($sp)
L_3:
lw $t1, 12($sp)
li $t1,17
sw $t1, 12($sp)
L_4:
lw $t2, 16($sp)
lw $t3, 8($sp)
move $t2, $t3
sw $t2, 16($sp)
L_5:
lw $t4, 20($sp)
lw $t5, 12($sp)
move $t4, $t5
sw $t4, 20($sp)
L_6:
lw $t6, 28($sp)
li $t6,0
sw $t6, 28($sp)
L_7:
lw $t7, 24($sp)
lw $s0, 28($sp)
move $t7, $s0
sw $t7, 24($sp)
L_8:
lw $s1, 32($sp)
li $s1,15
sw $s1, 32($sp)
L_9:
lw $s2, 24($sp)
lw $s3, 32($sp)
lw $s4, 36($sp)
slt $s4, $s2, $s3
sw $s4, 36($sp)
L_10:
lw $s5, 36($sp)
beqz $s5, L_18
L_11:
b L_16
L_12:
lw $s6, 40($sp)
li $s6,1
sw $s6, 40($sp)
L_13:
lw $s7, 24($sp)
lw $t0, 40($sp)
lw $t1, 44($sp)
add $t1, $s7, $t0
sw $t1, 44($sp)
L_14:
lw $t2, 24($sp)
lw $t3, 44($sp)
move $t2, $t3
sw $t2, 24($sp)
L_15:
b L_8
L_16:
la $a0, s0
li $v0, 4
syscall
L_17:
b L_12
L_18:
lw $t4, 16($sp)
lw $t5, 20($sp)
lw $t6, 48($sp)
slt $t6, $t4, $t5
sw $t6, 48($sp)
L_19:
lw $t7, 48($sp)
beqz $t7, L_25
L_20:
la $a0, s1
li $v0, 4
syscall
L_21:
lw $s0, 52($sp)
li $s0,1
sw $s0, 52($sp)
L_22:
lw $s1, 16($sp)
lw $s4, 52($sp)
lw $s2, 56($sp)
add $s2, $s1, $s4
sw $s2, 56($sp)
L_23:
lw $s3, 16($sp)
lw $s5, 56($sp)
move $s3, $s5
sw $s3, 16($sp)
L_24:
b L_18
L_25:
lw $ra, 0($sp)
jr $ra
