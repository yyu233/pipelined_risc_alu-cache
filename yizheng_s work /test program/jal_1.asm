// JAL test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link instruction
// for the single-cycle implementation.
// Corner case 1: displacement is negative 

addi r7, r7, 0  // clear r7 to avoid case in which r7=6
lbi r1, 0		//r1=0
subi r2, r7, 10	//if jalr works, r7=10, r2=r7-10=0
beqz r2, 2 		//r2==0, pc=pc+2+2 
jal -6 			//pc=pc+2-6, r7=pc+2=8+2=10
addi r1, r1,1	//if jal working, r1=0+1


