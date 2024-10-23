.model small
.stack 100h
.data
    prompt1 db 'Enter first single-digit number: $'
    prompt2 db 0Dh, 0Ah, 'Enter second single-digit number: $'
    result_msg db 0Dh, 0Ah, 'The sum is: $'
    newline db 0Dh, 0Ah, '$'
    num1 db ?
    num2 db ?
    sum db ?

.code
main:
    mov ax, @data
    mov ds, ax

    mov ah, 09h
    lea dx, prompt1
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov num1, al

    mov ah, 09h
    lea dx, prompt2
    int 21h

    mov ah, 01h
    int 21h
    sub al, '0'
    mov num2, al

    mov al, num1
    add al, num2
    mov sum, al

    add sum, '0'

    mov ah, 09h
    lea dx, result_msg
    int 21h

    mov ah, 02h
    mov dl, sum
    int 21h

    mov ah, 09h
    lea dx, newline
    int 21h

    mov ah, 4Ch
    int 21h

end main
