.model small
.data
divident dw -24h
divisor db 04h
que db ?
rem db ?
.code
mov ax,@data
mov ds,ax
mov ax,divident
mov bl,divisor
idiv divisor
mov que,al
mov ah,4ch
int 21h
ends
end