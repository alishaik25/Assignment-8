org 100h

mov ah, 02h       
mov dl, '2'       
int 21h          
mov ah, 02h       
mov dl, '6'       
int 21h          
mov ah, 4Ch       
int 21h           

ret