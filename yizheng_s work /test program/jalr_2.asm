// JALR test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link-Register instruction
// for the single-cycle implementation.
// Corner case 2: displacement is odd  


addi r7, r7,0		// clear r7
lbi r0, 6 			//r0=6
lbi r1, 0			//r1=0
jalr r0, 3 			//r7=pc+2=6+2=8, pc=6+3=9
addi r1, r1, 1		//if jalr fails, r1=1
addi r1, r1, 1		
addi r1, r1, 1		//if jalr works 