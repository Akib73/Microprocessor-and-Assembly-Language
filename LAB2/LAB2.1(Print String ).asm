;Write some code in assembly language for printing string using EMU808

.model samll

.stack 100h

.data  

a db 'My name is Akib $';Declear variable

.code 
  
main proc
     
     
    mov ax,@data ;Initialization
    mov ds,ax
    
    mov ah,9
    lea dx,a  ;load adresas  
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp

end main 
    