.model small

.stack 100h

.data 

c db "Enter 1st Number:$";

b db "Enter 2nd Number:$";


r db "Multiplication of tow value is:$"; 

a db ?

main proc
    
    mov ax,@data  ;Initialization data
    mov ds,ax
                  
    
    mov ah,9      ;print string
    lea dx,c
    int 21h
    
                   ;Input 1st number 
    mov ah,1
    int 21h
    mov a ,al
    sub a,48
    
  
    mov ah,2       ;newline
    mov dl,10
    int 21h
    
    mov ah,2       ;remove cerit
    mov dl,13
    int 21h        
           
    mov ah,9       ;print string 
    lea dx,b
    int 21h         
             
    mov ah,1       ;Input 2nd number 
    int 21h
    sub al,48
    
    mul a;        ;al=a*al
    
    aam           ;adjust ax the after multiplication 
    
    mov bx,ax 
    
    mov ah,2
    mov dl,10    
    int 21h
    
    mov ah,2
    mov dl,13
    int 21h  
    
    
    mov ah,9
    lea dx,r
    int 21h
    
    mov ah,2
    mov dl,bh       ;1st digt /most siginificant/leftmost digit
    add dl,48
    int 21h
                    ;2nd digt/least significant / rightmost digit 
    mov ah,2
    mov dl,bl
    add dl,48
    int 21h
    
    ext:
    mov ah,4ch
    int 21h
    main endp

end main