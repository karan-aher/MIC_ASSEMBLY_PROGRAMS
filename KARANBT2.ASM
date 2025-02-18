.model small
.data
src_arr dw 11h,22h,33h
des_arr dw 3 dup(0)
.code
mov ax,@data
mov ds,ax
mov es,ax
mov cx,3
up: movsw
loop up
ends
end
