.model small
.stack 100h
.data

a db "Enter 1st Number:$"       ;Initialization String Variable
b db "Enter 2nd Number:$"
s db "Summaition of tow Number is:$"

.code 

main proc
    
         mov ax,@data  ;Initialization Data
         mov ds,ax
         
         mov ah,9       ;Print String
         lea dx,a
         int 21h
                        ;Input Number
         mov ah,1
         int 21h
         mov bl,al 
                      
         mov ah,2      ;Print Newline
         mov dl,10
         int 21h
         
         mov ah,2
         mov dl,13     ;Remove Cerit
         int 21h
         
         mov ah,9
         lea dx,b
         int 21h
         
         mov ah,1
         int 21h
         mov bh,al
         
         add bl,bh      ;Add 2 number              
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
         
         mov ah,2      ;print result
         mov dl,bl
         int 21h
         
         exit:
         mov ah,4ch
         int 21h
         main endp

end main
         
         
         
         
         
          
         