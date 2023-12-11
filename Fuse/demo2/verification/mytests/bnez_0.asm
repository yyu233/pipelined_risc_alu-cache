// bnez test
//
// Test program for WISC-SP06 architecture
// for bnez instruction
// for the single-cycle implementation.
// General test 

slbi r0, 0   // 16'h0->r0, pc=0
slbi r0, 0x22  //16'h22->r0 pc=2
slli r1, r0, 5 //16'h0440->r1 pc=4
bnez r1,2  //r1!=0, pc=pc+2+2  pc=6
addi r1, r1, 1 // r1=16'h0441  pc=8, should not execute
addi r1, r1, 1 // if branch, r1=16'h0441, else r1=16'h0442  pc=10
halt

