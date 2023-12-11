// JALR test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link-Register instruction
// for the single-cycle implementation.
// Corner case 1: displacement is negative 

lbi r7, 0		// clear r7
lbi r0, 8 			//r0=6
lbi r1, 0			//r1=0
subi r2, r7, 12	//if jalr works, r7=12, r2=r7-12=0
beqz r2, 2 		//r2==0, pc=pc+2+2, skip jalr
jalr r0, -2 			//r7=pc+2=10+2=12, pc=8-2=6
addi r1, r1, 1		//if jalr works, r1=1
halt
