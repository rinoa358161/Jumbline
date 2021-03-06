#For loop for any other macro
.macro for (%regIter, %from, %to, %macro)
add %regIter, $zero, %from
Loop:
%macro()
add %regIterator, %regIterator, 1
ble %regIterator, %to, Loop
.end_macro

#Print an integer
.macro printInt(%reg)
move $a0, %reg
li $v0, 1
syscall
.end_macro

#Print a string
.macro printStr(%reg)
move $a0, %reg
li $v0, 4
syscall
.end_macro

#Get an integer input
.macro getInt(%reg)
li $v0, 5
syscall
move %reg, $v0
.end_macro

#Get a string input
.macro getInt(%reg, %max)
move $a0, %reg
move $a1, %max
li $v0, 8
syscall
.end_macro