.model small
.code
start:
mov si,2000h
mov di,4000h
mov cl,05h
loop1:mov bl,[si]
mov [di],bl
inc si
inc di
dec cl
jnz loop1
int 03h
end start
