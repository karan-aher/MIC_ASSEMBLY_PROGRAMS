.model small
.data
    num1 dw -04h
    num2 db -03h
    res dw ?
.code
    mov ax,@data
    mov ds, ax
    mov ax, num1
    mov bl, num2
    imul bl
    mov res, ax
    mov ah, 4ch
    int 21h
ends
end