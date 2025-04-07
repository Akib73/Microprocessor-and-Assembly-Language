.model small 

.stack 100h

.data

a db "Enter 1st Number:$";

b db  "Enter 2nd Number:$";

r db "Subtraction of tow number is:$";

.code 

main proc 
    
    mov ax,@data ;Initialization
    mov ds,ax
    
    mov ah,9   ;String print
    lea dx,a
    int 21h
    
    mov ah,1    ;input 1st number
    int 21h
    mov bl,al
    
    mov ah,2   ;newlinw
    mov dl,10
    int 21h
    
    mov ah,2   ;remove cerit
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1  ;input 2nd number
    int 21h
    mov bh,al
    
    sub bl,bh  ;Subtraction
    add bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,r
    int 21h 
    
    mov ah,2      ;Output
    mov dl,bl 
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main 
    
    