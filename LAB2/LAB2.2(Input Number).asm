;2.Write some code in assembly language for simple user 
;friendly input & output where input is given by user using EMU8086.

.model small

.stack 100h

.data 

a db "Enter the number:$"  

b db "The Number is:$"

main proc 
    
    mov ax,@data 
    mov ds,ax
    
    mov ah,9
    lea dx,a;
    int 21h
    
    mov ah,1 
    int 21h
    mov bl,al 
    
    mov ah,2
    mov dl,10  
    int 21h
            
    mov ah,2
    mov dl,13
    int 21h
            
            
    mov ah,9
    lea dx,b;
    int 21h
    
    
    mov ah,2
    mov dl,bl;
    int 21h
    
    exit:
    mov ah,4ch
    main endp

end  main 
    
    
    