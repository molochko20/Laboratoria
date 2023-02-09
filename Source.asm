.686
.model flat,stdcall
.stack 100h
.data
X dw 100 ;
Y dw 21 ;
Z dw 4 ;
M dw ? ;
.code
ExitProcess PROTO STDCALL :DWORD
Start:
mov ax, X
ror ax, 3
imul ax, 3

mov bx, Y
ror bx, 3
mov ax, bx
add ax, bx

mov cx, Z
ror cx, 3
mov ax, cx
or ax, cx

mov ax, M

exit:
Invoke ExitProcess,1
End Start