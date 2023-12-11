// JAL test
//
// Test program for WISC-SP06 architecture
// for Jump-And-Link instruction
// for the single-cycle implementation.
// Corner case 2: displacement is odd 

addi r7, r7, 0  // clear r7 to avoid case in which r7=6
lbi r1, 0		//r1=0 
jal 3 			//pc=pc+2+3, r7=pc+2=4+2=6
addi r1, r1,1	//if jal not working, r1=0+1
addi r1, r1,1	
addi r1, r1,1	//if jal works, r1=2 