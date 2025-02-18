.model small
.data
src_arr dw 11h,22h,33h
des_arr dw 3 dup(0)
.code
mov ax,@data
mov ds,ax
mov es,ax
mov cx,3
mov si,offset src_arr
mov di,offset des_arr
up: mov ax,[si]
mov [di],ax
mov si,2
mov di,2
loop up
ends
end
