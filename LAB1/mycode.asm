;LAB:01
;1. Write some code in assembly language for simple input & output using EMU8086.
;2. Write some code in assembly language for simple input & output where output
;is shown in the new line using EMU8086.
.model small
.stack 100h
.code
main proc
    mov ah,1  ;Input
    int 21h
    mov bl,al
   
    mov ah,2
    mov dl,10
    int 21h    ;NewLine & Remove Cerit 
    mov dl,13
    int 21h
    
    mov ah,2
    mov dl,bl  ;Output 
    int 21h
    
    exit :
    mov ah,4ch
    int 21h
    main endp

 end main