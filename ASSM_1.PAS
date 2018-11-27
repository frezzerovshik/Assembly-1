program K;
var A,B,C,D,Z :byte;
    Y,R:word;
begin
writeln('VV A,B,C,D,Z');
readln(A,B,C,D,Z);
                  asm
                  mov AL,A
                  mul B
                  shl AX , 1
                  mov Y , AX
                  mov AL , C
                  mul D
                  shl AX , 1
                  shl AX , 1
                  sub Y , AX
                  xor DX , DX
                  mov AL , Z
                  mul Z
                  mov R, AX
                  mov DX , Y
                  and DX , 0FF00H
                  mov AX , Y
                  and AX , 0FFH
                  div Y
                  mov Y , AX
                  end;
                  writeln ('Y = ' , Y);
                  end.