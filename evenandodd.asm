.model small
.data
array db 10h,11h,12h,13h,14h,15h,16h,17h,18h,19h
.code
start:
mov ax,@data
mov ds,ax
mov cl,10
mov si,2000h
mov DI,2008h
lea bp,array
back: mov al,ds:[bp]
mov bl,al
and al,01h
JZ next
mov [di],bl
inc di
jmp skip
next: mov [si],bl
inc si
skip:inc bp
dec cl
jnz back
int 03h
end start
