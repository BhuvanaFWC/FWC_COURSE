.include "/sdcard/assign/m328Pdef/m328Pdef.inc"

.equ p= 1
.equ q= 1
_start:
ldi r16,0b00000100
out DDRB,r16

main_loop:
ldi r18,p
ldi r19,q

and r18,r19
mov r20,r18

ldi r18 ,p
com r18
mov r21,r18

or r21,r20

turn_on_or_off:
ldi r30,1
cp r21,r30
breq on

ldi r30,0
cp r21,r30
breq off

on:
ldi r17,0b00000100
out PORTB,r17


off:
ldi r17,0b00000000
out PORTB,r17

end_loop:
rjmp main_loop



