.model small
.data
no1 db 8h
no2 db 5h
diff dw ?
.code
mov ax,@data
mov ds,ax
mov al,no1
mov bl,no2
sub al,bl
mov diff,ax
jnc exit
mov diff+1,01
exit:
mov ah,4ch
int 21h
ends
end
