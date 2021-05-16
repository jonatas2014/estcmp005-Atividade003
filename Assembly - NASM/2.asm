section .data

    msg1 db "Informe um número: ", 0xA, 0xD
    len_msg1 equ $ - msg1
    msg2 db "Informe outro número: ", 0xA, 0xD
    len_msg2 equ $ - msg2
    msg3 db "O maior entre eles é: ", 0xA, 0xD
    len_msg3 equ $ - msg3

section .bss

    ;vatáveis que podem armazenar até 6 bytes de informação
    num1 resb 6 
    num2 resb 6
    num_greater resb 6

section .text
    global _start

    _start:
        
        ;write msg1
        mov edx, len_msg1
        mov ecx, msg1
        mov ebx, 1 ;file descriptor (stdout)
        mov eax, 4 ;system call number (sys_write)
        int 0x80   ;call kernel

        ;read first number
        mov edx, 8 ;limit the max number of characters that can be read
        mov ecx, num1
        mov ebx, 0 ;file descriptor (stdin)
        mov eax, 3 ;system call number (sys_read)
        int 0x80   ;call kernel

        ;write msg2
        mov edx, len_msg2
        mov ecx, msg2
        mov ebx, 1 ;file descriptor (stdout)
        mov eax, 4 ;system call number (sys_write)
        int 0x80   ;call kernel

        ;read second number
        mov edx, 8 ;define the max number of characters that can be read
        mov ecx, num2
        mov ebx, 0 ;file descriptor (stdin)
        mov eax, 3 ;system call number (sys_read)
        int 0x80   ;call kernel

        mov eax, [num1] ;move first number to eax
        ;sub eax, '0'    ;converts the ASCII input to decimal

        mov ebx, [num2] ;move second number to ebx
        ;sub ebx, '0'    ;converts the ASCII input to decimal
       
        ;comparisson
        cmp eax, ebx ;is eax > ebx?
        jg _exit     ;if yes, jump to _exit
        mov eax, ebx ;if no, moves ebx content into eax

        ;greater number will be in eax

        _exit:

            ;converts its contents to ASCII
            ;so that it can be showes in stdout
            ;add eax, '0' 
            ;moves grater number into num_greater memory location
            mov   [num_greater], eax 
            
            ;show msg3
            mov   edx, len_msg3
            mov   ecx, msg3
            mov   ebx, 1	;file descriptor (stdout)
            mov   eax, 4	;system call number (sys_write)
            int   0x80	;call kernel
                
            ;show greater number    
            mov   edx, 8 ;max number of characters that will be showed in stdout 
            mov   ecx, num_greater
            mov   ebx, 1	;file descriptor (stdout)
            mov   eax, 4	;system call number (sys_write)
            int   0x80	;call kernel

            ;exit program
            mov   eax, 1 ;system call number (sys_exit)
            int   0x80 ;call kernel
