.data
CONTROL:  .word32 0x10000
DATA:			.word32	0x10008

.text
main:
lwu		 	$t8, DATA($zero)
lwu 		$t9, CONTROL($zero)
daddi		$v0,$zero,8	; 
sd 			$v0,0($t9)
ld 			$t1,0($t8)			# ��������n
daddi		$t2,$zero, 1		# $t2 = result = 1

factorial:
beqz 		$t1,print				# ���
dmul 		$t2,$t2,$t1			# result *= n
daddi 	$t1,$t1,-1			# n--
j	factorial							# ����ѭ��
print:
daddi		$v0,$zero,1
sd 			$t2,0($t8)
sd 			$v0,0($t9)
halt