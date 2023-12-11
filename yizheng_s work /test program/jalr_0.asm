// JALR test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link-Register instruction
// for the single-cycle implementation.
// General test 


addi r7, r7,0		// clear r7
lbi r0, 6 			//r0=6
lbi r1, 0			//r1=0
jalr r0, 4 			//r7=pc+2=6+2=8, pc=6+4=10
addi r1, r1, 1		//if jalr fails, r1=1
addi r1, r1, 2		// if jalr works , r1=2