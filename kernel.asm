org 0x7e00
jmp 0x0000:start

data:
    titulo db 'Only 4 Genius-ASM Version', 0
    jogar db '1 - Comecar', 0
    instrucoes db '2 - Nao sou genius, me explica', 0
    creditos db '3 - Genius - criadores', 0
    nextLine db '            ',13,10

    ;tela Créditos    
    creditosTitulo db 'CREDITOS', 0
    gabi db 'Gabriela M. M. de Souza (gmms)', 0
    marcos db 'Marcos A. V. de Lima (mavl)', 0
    pedro db 'Pedro J. L. da Silva (pjls2)', 0
    creditosSair db '~aperte 1 para voltar~', 0

    ; tela instrucoes
    instrucoesTitulo db 'INSTRUCOES', 0
    linha1 db 'Apos selecionar a dificuldade, a tela ', 0
    linha2 db 'vai  mostrar uma sequencia  aletoria', 0
    linha3 db 'de 4 cores. Ao fim, voce deve apertar' , 0
    linha4 db 'as teclas correspondentes a sequencia ', 0
    linha5 db 'de cores na seguinte forma:', 0

    linha6 db 'r para vermelho', 0
    linha7 db 'g para verde', 0
    linha8 db 'b para blue', 0
    linha9 db 'y para amarelo', 0
    

start:
    xor ax, ax
    mov ds, ax
    mov es, ax
    call configModovideo
    call telaMenu
    jmp .espera
    ;ler ordem do usuário
    .espera:
        call lerChar
        cmp al, '1'
            je telaDificuldade
        cmp al, '2'
            je telaInstrucoes
        cmp al, '3'
            je telaCreditos
        jmp .espera


telaDificuldade:
    call lerChar
    cmp al, 27

    loopDif:
        call lerChar
        cmp al, '1'
        jne loopDif  
    
    jmp start
telaInstrucoes:

    call cleanTela
    mov bl, 0xe
    ;posicionar título
    mov dl, 15
    mov dh, 1
    call andarEspaco
    mov si, instrucoesTitulo ;amarelo
    call printString
    
    mov dl, 2
    add dh, 4
    mov bl, 0x9 ;cor verde azul claro
    call andarEspaco
    mov si, linha1 
    call printString
    
    add dh, 1
    call andarEspaco
    mov si, linha2
    call printString

    add dh, 1
    call andarEspaco
    mov si, linha3
    call printString

    add dh, 1
    call andarEspaco
    mov si, linha4
    call printString

    add dh, 1
    call andarEspaco
    mov si, linha5
    call printString

    mov dl, 13
    add dh, 3
    mov bl, 0x4
    call andarEspaco
    mov si, linha6
    call printString

    add dh, 1
    call andarEspaco
    mov bl, 0xa
    mov si, linha7
    call printString

    add dh, 1
    call andarEspaco
    mov bl, 0x9
    mov si, linha8
    call printString

    add dh, 1
    call andarEspaco
    mov bl, 0xe
    mov dl, 15
    mov si, linha9
    call printString

    mov dl, 9
    add dh, 3
    call andarEspaco
    mov bl, 0x5
    mov si, creditosSair
    call printString
    
    loopInst:
        call lerChar
        cmp al, '1'
        jne loopInst  
    
    jmp start


telaCreditos:
    call cleanTela
    mov bl, 0xe
    ;posicionar título
    mov dl, 15
    mov dh, 4
    call andarEspaco
    mov si, creditosTitulo ;amarelo
    call printString
    
    mov dl, 5
    mov dh, 15
    mov bl, 0xa ;cor verde claro
    call andarEspaco
    mov si, gabi 
    call printString
    
    mov dl, 6
    add dh, 2
    call andarEspaco
    mov bl, 0x4 ;cor vermelho
    mov si, marcos
    call printString
    
    mov dl, 5
    add dh, 2
    call andarEspaco
    mov bl, 0x9 ;cor azul claro
    mov si, pedro
    call printString

    mov dl, 9
    add dh, 3
    call andarEspaco
    mov bl, 0xe ;cor amarelo
    mov si, creditosSair
    call printString

    
    loop:
        call lerChar
        cmp al, '1'
        jne loop  
    
    jmp start

telaMenu:

    
    mov bl, 0xe
    ;posicionar título
    mov dl, 7
    mov dh, 4
    call andarEspaco
    mov si, titulo ;amarelo
    call printString
    
    mov dl, 13
    mov dh, 15
    mov bl, 0xa ;cor verde claro
    call andarEspaco
    mov si, jogar 
    call printString
    
    sub dl, 8
    add dh, 2
    call andarEspaco
    mov bl, 0x4 ;cor vermelho
    mov si, instrucoes
    call printString
    
    add dl, 3
    add dh, 2
    call andarEspaco
    mov bl, 0x9 ;cor azul claro
    mov si, creditos
    call printString
    ret

configModovideo:
    ;modo video
    mov ah, 0h 
    mov al, 13h 
    int 10h

    mov ah, 0xb 
    mov bh, 0 
    mov bl, 0xe ;cor
    int 10h

    ret

lerChar:
    mov ah, 0x00
    int 16h
    ret

printChar:   
    mov ah, 0xe
    int 10h
    ret

printString:
    lodsb       ;passa da posição de si da string pra al
    cmp al, 0
        je .fin
    call printChar
    jmp printString
    .fin:
        ret
        
andarEspaco:
    mov ah, 02h
    mov bh, 0
    int 10h
    ret

cleanTela:
    mov ah, 0
    mov al, 13h
    int 10h
    ret