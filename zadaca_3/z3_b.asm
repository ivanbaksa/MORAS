@R0
D=M-1; 

@i
M=D;
@j
M=D-1;

(loop_1) // for i = size -1 i >= 0 i--

@i
D=M;

@end_1
D;JEQ
//
@i
D=M;
@j
M=D-1;
(loop_2) //for j = i-1 j>=0 j--
@j
D=M;

@end_2
D;JLT     
//

//ovdje radit switcheve 
@100
D=A;
@i
A=D+M;
D=M;   
@temp1
M=D;

@100
D=A;
@j
A=D+M;
D=M;  
@temp2
M=D;

@temp1
D=M;
@temp2
D=M-D;   

@skip
D;JLE

///////////switch
@100
D=A;
@i
D=D+M
@temp
M=D;   

@temp2
D=M;
@temp
A=M;
M=D;

//sve isto za j switch

@100
D=A;
@j
D=D+M
@temp
M=D;   

@temp1
D=M;
@temp
A=M;
M=D;



(skip)

//
@j
M=M-1;

@loop_2
0;JMP

(end_2)

//
@i
M=M-1;   // i--


@loop_1
0;JMP

(end_1)


(END)
@END
0;JMP