
.model small

.data

calc1 db "CALCULATOR$"

calc2 db "Press 1 For ADDITION$" 

calc3 db "Press 2 For SUBTRACTION$"  

calc4 db "Enter the choice :$" 

Variable2 db "Enter the number 01 :$"

Variable3 db "Enter the number 02 :$" 

;Variable5 db "Result is :"

Variable6 db "Answer is= $"

Switch db 0

a db 0
b db 0


.code
main proc  
    
    Mov ax,@data
    Mov ds,ax
    
    START:  
    
    Lea dx,calc1    ;show message CALC1
    Mov ah,9h
    Int 21h
    
    Mov ah,2        ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Lea dx,calc2    ;show message CALC2
    Mov ah,9h
    Int 21h
    
    Mov ah,2        ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Lea dx,calc3     ;show message CALC3
    Mov ah,9h
    Int 21h
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Lea dx,calc4     ;show message CALC4
    Mov ah,9h
    Int 21h
    
      
    
    Mov ah,1h
    Int 21h   
    
    Mov switch,al
    
    Cmp switch,'1'
    Je addition 
    Cmp switch,'2'
    Je subtraction
    
    addition:
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Lea dx,Variable2 ;INPUT 01
    Mov ah,9
    Int 21h  
    
    Mov ah,1h
    Int 21h 
    sub al,48
    mov a,al
        
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Lea dx,Variable3 ;INPUT 02
    Mov ah,9
    Int 21h  
    
    Mov ah,1h
    Int 21h
    sub al,48
    mov b,al
    
    add al,a
    mov ah,0
    aaa              ;adjust after addition
    
    add ah,48
    add al,48
    
    mov bx,ax
    
    Mov ah,2        ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    mov ah,9
    lea dx,Variable6
    int 21h
    
    mov ah,2
    mov dl,bh
    int 21h
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    
    ;Mov ah,4ch
    ;Int 21h 
    
    JE START
    
    subtraction:
    
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Mov ah,9
    Lea dx,Variable2
    Int 21h
    
    Mov ah,1
    Int 21h
    Sub al,30h
    
    Mov a,al
    
    
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Mov ah,9
    Lea dx,Variable3
    Int 21h  
    
    Mov ah,1
    Int 21h
    Sub al,30h
    Mov b,al
    
    
    
    Mov ah,2         ;NEW_LINE
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    Mov ah,9
    Lea dx,Variable6
    Int 21h
    
    Mov al,a 
    Sub al,b
    Add al,30h
    
    Mov ah,2
    Mov dl,al
    Int 21h
    
    ;Mov ah,4ch
    ;Int 21h
    
    JE START
    
    Main Endp
End Main
    
    
    


