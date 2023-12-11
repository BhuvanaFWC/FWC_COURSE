.include "/sdcard/assign/m328Pdef/m328Pdef.inc"
.EQU P=0
.EQU Q=1
.EQU ANDRES=2
.EQU NANDRES=3
.EQU ORRES=4
.EQU LEDPIN=5


main:
ldi r16,(1<<p) | (1<<q)
out DDRB,r16

ldi r16,(1 <<ANDRES) | (1<< NANDRES) | (1<< ORRES) |(1<<LEDPIN)
out DDRB ,r16

loop:
in r16,PINB

cpi r16,0b00000011
breq and_true
ldi r16,0
out PORTB,r16
rjmp nand_or_common

and_true:
ldi r16,1
out PORTB ,r16

nand_or_common:
cpi r16,0b00000001
breq nand_false
ldi r16,0
out PORTB ,r16
rjmp or_true

nand_false:
ldi r16,1
out PORTB, r16

or_true:
cpi r16,0
breq or_false
ldi r16,1
out PORTB ,r16
rjmp loop

or_false:
ldi r16,0
out PORTB, r16
rjmp loop

