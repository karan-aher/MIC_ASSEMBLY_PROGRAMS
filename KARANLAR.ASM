.model small
.data
array db 12h,01h,22h,45h,05h
Largest db ?
.code
mov ax,@data
mov ds,ax
mov cx,5
mov si,offset array
mov al,[si]
dec cx
up: inc si
cmp al,[si]
jnc next
mov al,[si]
next:
loop up
mov Largest,al
ends
end
