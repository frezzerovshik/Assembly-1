program K;
var Y,A,B,C,D,Z :byte;
    R:word;
begin
writeln('VV A,B,C,D,Z');
readln(A,B,C,D,Z);
                  asm
                  mov al , A
                  mul B
                  shl AX , 1
                  mov R , AX
                  mov AL , C
                  mul D
                  shl AX , 1
                  shl AX , 1
                  sub R , AX
                  mov AX , R
                  div Z
                  xor AH , AH
                  div Z
                  mov Y, AL
                  end;
                  writeln ('Y = ' , Y);
                  end.