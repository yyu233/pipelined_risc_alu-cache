// bnez test
//
// Test program for WISC-SP06 architecture
// for bnez instruction
// for the single-cycle implementation.
// General test 

// Tests bnez with a negative displacement using a simple loop
// 5 addi instructions are expected
lbi r0, 5   // R0<-5
addi r0, r0, -1 // decrement R0
bnez r0, -4  // r1==0, pc=pc+2-4
halt

