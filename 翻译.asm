#���������$a1,
#����������$a2,
#�´���$s1 = 1,��С��$s2 = 1,�¶���$s3 = 1
#��ʼ������������ΪN
#�²��������$t1
   .data
N:.word 5
A: .space 4                   
   
# ���Ĵ��� 
   .text
#������N�����$a0�Ĵ���
addi  $a0,$0,5 
Random:
addi   $a1,$0,0
beq    $a1,$0,Random
KeyBoard:
addi   $a2,$s0,0
beq    $a2,$0,KeyBoard
loop:
add    $s1,$0,$0
add    $s2,$0,$0
add    $s3,$0,$0
beq    $t1,$a0,end
beq    $a1,$a2,right
slt    $t4,$a1,$a2
beq    $t4,$zero,big
addi   $s2,$zero,1
Sava:
addi   $s1,$s1,0
addi   $s2,$s2,0
addi   $s3,$s3,0
addi   $t1,$t1,1
j      KeyBoard

big:
addi  $s1,$zero,1
j     Sava

right:
addi  $s3,$zero,1
addi   $s1,$s1,0
addi   $s2,$s2,0
addi   $s3,$s3,0
add    $t1,$0,$0
j    Random

end:
    nop
