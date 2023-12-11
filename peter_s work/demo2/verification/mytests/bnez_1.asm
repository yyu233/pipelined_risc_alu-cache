// bnez test
//
// Test program for WISC-SP06 architecture
// for bnez instruction
// for the single-cycle implementation.
// General test 

lbi r0, 0   // r0<-0
lbi r1, 104 //r1<-104
bnez r0,2  //r1==0, pc=pc+2 
addi r1, r1, 1 // r1=16'h0441 this line should execute
addi r1, r1, 1 // if branch, r1=16'h0060, else r1=16'h006a
halt

