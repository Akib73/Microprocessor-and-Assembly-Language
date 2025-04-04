.model small
.stack 100h
.data
 
a db "Enter 1st Numebr:$"   ;Variable Intialization

b db "Enter 2nd Number:$"

c db "Enter 3rd Number:$"

s db "Summation of Three Number is:$"

.code

main proc
    
    mov ax,@data
    mov ds,ax        ;Data Initialization in the code 
    
    mov ah,9         ;Print String 
    lea dx,a
    int 21h 
    
    mov ah,1         ;Input number
    int 21h
    mov bl,al
    
    mov ah,2         ;Print Newline 
    mov dl,10         
    int 21h
    
    mov ah,2         ;Remove Cerit 
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    add bl,bh       ;Add First 2 number
    sub bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,1
    int 21h
    mov ch,al
    
    add bl,ch        ;Add last Number 
    sub bl,48
    
    mov ah,2
    mov dl,10
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,s
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main
    