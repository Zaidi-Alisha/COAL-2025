INCLUDE Irvine32.inc

.data
    Source db "Hello, World!", 0   
    Target db 256 dup(0)            

.code
main PROC
    mov esi, OFFSET Source        
    mov edi, OFFSET Target       
    xor ecx, ecx                  

copy:
    mov al, [esi + ecx]         
    mov [edi + ecx], al          
    cmp al, 0                      
    je done                       
    inc ecx                       
    jmp copy                

done:
    lea edx, Target                
    call WriteString              

    exit                           
main ENDP

END main

