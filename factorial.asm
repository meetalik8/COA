.model small
.data
num dw 05h
.code
mov ax,@data
mov ds,ax
mov ax,01
mov bx,num
call fact
mov di,ax
mov bp,2
mov bx,dx
mov bx,di
dec bp
mov ah,4ch
int 21h
fact proc near
cmp bx,01
jnz l11
l12: mul bx
dec bx
cmp bx,01
jne l12
ret
l11: mov ax,01
ret
fact endp
end
