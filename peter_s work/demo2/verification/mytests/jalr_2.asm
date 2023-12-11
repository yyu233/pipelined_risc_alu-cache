// JALR test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link-Register instruction
// for the single-cycle implementation.
// Corner case 2: jalr instruction uses R7 for Rs


lbi r7, 6		// clear r7
lbi r1, 0			//r1=0
jalr r7, 2 			//r7=pc+2=6+2=8
addi r1, r1, 1		//if jalr fails 
addi r1, r1, 1		//if jalr works 
halt
