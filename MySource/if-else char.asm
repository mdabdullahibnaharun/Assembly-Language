
org 100h  

.model small

.stack 100h

.data

.code

main proc

    mov ah,1
    int 21h

    cmp al,'A'
    jl end_if

    cmp al,'Z'
    jg end_if

    mov dl,al
    mov ah,2
    int 21h

    end_if: 

    mov ah,4ch
    int 21h
         
         
main endp

end main
         
ret




