org 0x7e00
jmp 0x0000:start

data:
    ;tela menu
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
 
    ;telaDificuldade
    linha10 db 'FACIL (press F)', 0
    linha11 db 'MEDIO (press M)', 0
    linha12 db 'Retornar (press 1)', 0

    
    errouMsg db ' ERROU! :( Tente novamente) ', 0
    voltarMsg db 'PRESS 1', 0
    acertouMsg db 'ACERTOU!! :D Vamos la!', 0
    proximoMsg db '1 - Proximo Nivel', 0
    suaVezMsg db 'SUA VEZ!', 0
    sairMsg db '3 - Sair', 0
    vencedorMsg db 'parabens, voce venceu! :D', 0

    
    img db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 14, 14, 14, 14, 14, 14, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 6, 6, 14, 14, 14, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    vencedorimg db 0, 0, 8, 1, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 9, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 12, 12, 4, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 12, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 12, 12, 12, 4, 11, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 7, 7, 4, 1, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 12, 12, 8, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 8, 0, 0, 0, 0, 0, 12, 7, 12, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 12, 0, 4, 12, 12, 8, 9, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 8, 12, 12, 1, 9, 9, 9, 8, 8, 0, 0, 0, 0, 8, 0, 0, 0, 12, 7, 7, 8, 0, 12, 12, 12, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 0, 0, 0, 0, 0, 0, 0, 12, 12, 12, 0, 9, 9, 9, 9, 9, 9, 0, 0, 6, 14, 0, 0, 0, 0, 12, 12, 0, 0, 4, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4, 4, 4, 4, 12, 12, 4, 0, 0, 8, 9, 9, 9, 9, 0, 6, 14, 14, 14, 0, 6, 6, 8, 0, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 8, 8, 12, 12, 12, 12, 4, 0, 0, 0, 0, 8, 1, 9, 8, 1, 0, 14, 14, 6, 6, 6, 6, 6, 6, 0, 0, 0, 12, 12, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 12, 4, 0, 8, 0, 8, 0, 13, 0, 0, 11, 8, 9, 9, 0, 0, 0, 0, 0, 6, 0, 6, 6, 6, 6, 6, 6, 6, 0, 12, 12, 8, 0, 8, 8, 8, 0, 0, 0, 0, 0, 4, 4, 0, 4, 0, 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 11, 1, 9, 8, 8, 0, 0, 0, 0, 0, 0, 0, 6, 12, 6, 6, 6, 6, 6, 6, 12, 12, 4, 0, 8, 9, 9, 8, 0, 0, 0, 4, 12, 12, 12, 4, 0, 0, 0, 4, 12, 4, 0, 0, 0, 0, 0, 0, 8, 9, 8, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 14, 6, 6, 6, 6, 6, 6, 12, 12, 8, 0, 8, 9, 9, 8, 0, 0, 0, 12, 12, 12, 0, 8, 12, 0, 0, 0, 8, 4, 0, 0, 0, 0, 0, 0, 0, 0, 9, 9, 9, 9, 9, 9, 1, 0, 0, 6, 14, 14, 14, 6, 6, 6, 6, 6, 12, 12, 12, 0, 8, 8, 0, 0, 0, 0, 8, 12, 7, 12, 0, 0, 0, 12, 4, 0, 4, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 8, 6, 14, 7, 14, 14, 6, 6, 6, 14, 12, 12, 12, 6, 6, 0, 0, 0, 0, 0, 15, 12, 7, 7, 5, 0, 0, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 6, 12, 14, 7, 12, 12, 14, 6, 6, 14, 12, 12, 12, 14, 14, 6, 0, 0, 0, 0, 0, 12, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 8, 6, 14, 7, 7, 12, 12, 12, 14, 14, 14, 12, 12, 12, 12, 14, 14, 6, 0, 0, 0, 0, 8, 7, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 8, 12, 14, 7, 12, 12, 12, 12, 14, 14, 12, 12, 12, 12, 14, 14, 14, 14, 6, 0, 0, 0, 4, 12, 7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 8, 8, 7, 14, 7, 12, 12, 12, 12, 12, 14, 14, 12, 12, 12, 14, 14, 14, 14, 14, 14, 6, 0, 0, 12, 12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 8, 0, 8, 7, 7, 12, 12, 12, 12, 12, 12, 14, 14, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 6, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 9, 7, 7, 12, 12, 12, 12, 12, 12, 14, 14, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 14, 0, 15, 0, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 9, 9, 7, 12, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 7, 9, 0, 0, 0, 0, 0, 0, 0, 0, 6, 7, 9, 9, 9, 7, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 7, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 8, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 14, 7, 9, 9, 9, 7, 7, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 9, 9, 9, 9, 9, 9, 9, 8, 8, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 5, 0, 6, 14, 7, 7, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 9, 9, 9, 9, 9, 9, 7, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 12, 4, 0, 12, 7, 12, 12, 9, 9, 5, 5, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 9, 9, 7, 7, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 12, 12, 4, 6, 14, 7, 12, 12, 12, 9, 5, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 12, 14, 14, 14, 14, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 4, 4, 0, 12, 14, 12, 12, 12, 12, 12, 5, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 14, 14, 14, 14, 12, 12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 14, 7, 12, 12, 12, 12, 12, 7, 9, 9, 9, 9, 7, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 12, 14, 14, 14, 12, 6, 6, 0, 8, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 8, 14, 7, 12, 12, 12, 12, 12, 14, 7, 9, 9, 9, 9, 13, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 12, 12, 6, 6, 6, 14, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 12, 12, 12, 12, 12, 14, 14, 14, 7, 9, 9, 9, 13, 13, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 6, 14, 14, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 9, 7, 12, 12, 12, 12, 12, 14, 14, 14, 14, 7, 13, 13, 13, 13, 13, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 6, 6, 0, 14, 8, 8, 0, 6, 6, 6, 14, 0, 0, 0, 0, 8, 9, 7, 7, 12, 12, 12, 12, 14, 14, 14, 14, 14, 14, 7, 13, 13, 13, 13, 7, 15, 14, 14, 14, 14, 14, 14, 12, 6, 6, 6, 6, 6, 0, 6, 0, 8, 0, 0, 0, 6, 12, 12, 0, 0, 0, 0, 0, 7, 9, 9, 7, 14, 12, 12, 14, 14, 14, 14, 14, 14, 14, 14, 7, 13, 13, 13, 13, 15, 15, 14, 14, 14, 14, 12, 8, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 12, 14, 6, 0, 0, 0, 6, 7, 9, 9, 9, 7, 14, 12, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 13, 15, 15, 13, 7, 7, 7, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 8, 15, 0, 0, 0, 6, 7, 7, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 15, 13, 7, 7, 5, 5, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 12, 12, 9, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 8, 5, 5, 8, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 0, 0, 0, 0, 0, 0, 0, 6, 7, 12, 12, 12, 9, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 8, 0, 0, 8, 8, 9, 9, 0, 0, 0, 0, 0, 0, 6, 14, 12, 6, 0, 0, 0, 0, 0, 0, 6, 12, 12, 12, 12, 7, 9, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 6, 6, 6, 0, 0, 0, 0, 11, 8, 9, 9, 8, 0, 0, 0, 0, 0, 6, 12, 12, 0, 0, 0, 0, 0, 0, 8, 7, 12, 12, 12, 14, 14, 7, 9, 9, 13, 13, 7, 7, 14, 14, 14, 14, 14, 6, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 8, 8, 11, 0, 0, 0, 0, 0, 15, 0, 6, 0, 0, 0, 0, 0, 13, 8, 7, 12, 12, 14, 14, 14, 14, 7, 7, 13, 13, 13, 13, 7, 15, 14, 14, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 9, 7, 12, 12, 14, 14, 14, 14, 14, 14, 7, 13, 13, 13, 13, 7, 8, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 8, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 7, 7, 5, 8, 8, 0, 13, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 7, 8, 0, 0, 0, 8, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 14, 14, 14, 6, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 7, 7, 7, 0, 0, 0, 6, 7, 9, 9, 9, 7, 14, 14, 14, 14, 14, 14, 6, 6, 0, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 7, 8, 0, 0, 0, 6, 12, 7, 9, 9, 13, 7, 14, 14, 14, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 6, 14, 7, 13, 13, 13, 7, 7, 8, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 12, 14, 7, 7, 7, 8, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    ; tamanho do sprite
    vencedorSpriteWidth dw 48
	vencedorSpriteHeigth dw 48

	geniusSpriteWidth dw 51
	geniusSpriteHeigth dw 45
	; posicao do sprite na tela
    vencedorSpriteX dw 80
	vencedorSpriteY dw 270

	geniusSpriteX dw 70
	geniusSpriteY dw 280
    ; drawX e Y sao a posicao x e y na tela
	drawX dw 0
	drawY dw 0
	; spriteW e H sao a largura e altura do desenho
	spriteW dw 0
	spriteH dw 0
    cor db 0


%macro margin 3
   
        mov cx, %2 ;col
        mov dx, %1 ;row
        mov ah, 0ch ; put pixel
        mov al, 15
        loop%3:
            inc cx 
            int 10h
            cmp cx, %2 + 58
            jne loop%3

        
        
        mov cx, %2 ;col
        mov dx, %1  ;row
        mov ah, 0ch ; put pixel
        mov al, 15
        loop%3%3: 
            inc dx
            int 10h
            cmp dx, %1 + 58
            jne loop%3%3

        
        mov cx, %2 + 58 ;col
        mov dx, %1  ;row
        mov ah, 0ch ; put pixel
        mov al, 15
        loop%3%3%3:
            inc dx
            int 10h
            cmp dx, %1 + 58
            jne loop%3%3%3

        
        mov cx, %2 ;col
        mov dx, %1 + 58  ;row
        mov ah, 0ch ; put pixel
        mov al, 15
        loop%3%3%3%3: 
            inc cx
            int 10h
            cmp cx, %2 + 58
            jne loop%3%3%3%3


%endmacro
    

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

    call cleanTela
    ;mostra tela de dificuldade 
    ;facil, dificil ou retornar
    mov dl, 10
    mov dh, 3
    call andarEspaco
    mov si, linha10
    call printString

    mov dl, 10
    mov dh, 6
    call andarEspaco
    mov si, linha11
    call printString

    mov dl, 10
    mov dh, 9
    call andarEspaco
    mov si, linha12
    call printString
    loopDif:
        call lerChar
        cmp al, 'f'
            je facil
        cmp al, 'm'
            je medio 
        cmp al, '1'
            je start
        jne loopDif  
    jmp start


telaVencedor:

    call cleanTela
    
    mov dl, 9
    mov dh, 5
    call andarEspaco
    mov si, vencedorMsg
    call printString
    mov bl, 0xe
    
    mov si, vencedorimg

    mov ax, [vencedorSpriteX] 
	mov [drawX], ax

	mov ax, [vencedorSpriteY]
	mov [drawY], ax

	mov ax, [vencedorSpriteWidth]
	mov [spriteW], ax

	mov ax, [vencedorSpriteHeigth]
	mov [spriteH], ax
    call drawSprite

    
    call delay1s
    call delay1s
    call delay1s
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
    mov dh, 5
    call andarEspaco
    mov si, titulo ;amarelo
    call printString
    mov si, img
    ; confiurando parametros para sprite do genius
    mov ax, [geniusSpriteX]
	mov [drawX], ax

	mov ax, [geniusSpriteY]
	mov [drawY], ax

	mov ax, [geniusSpriteWidth]
	mov [spriteW], ax

	mov ax, [geniusSpriteHeigth]
	mov [spriteH], ax
    call drawSprite
    
    mov dl, 15
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


facil: 
    call level1
    call acertou
    call level2
    call acertou
    call level3
    call acertou
    call level4
    call acertou
    call level5
    jmp telaVencedor
    

medio:
    call level6
    call acertou
    call level7
    call acertou
    call level8
    call acertou
    call level9
    call acertou
    call level10
    jmp telaVencedor

level1:

    call init 

    call piscaRed
    call piscaRed
    call svez
    call validaR
    call validaR
   
    ret


level2:
    
    call init 

    call piscaRed
    call piscaBlue
    call piscaRed
    call piscaBlue

    call svez

    call validaR
    call validaB
    call validaR
    call validaB



    ret


level3:
    
    call init 

    call piscaBlue
    call piscaBlue
    call piscaRed
    call piscaBlue
    call piscaBlue
    call svez
    call validaB
    call validaB
    call validaR
    call validaB
    call validaB

    ret

level4:
    
    call init 

    call piscaRed
    call piscaBlue
    call piscaRed
    call piscaBlue
    call piscaBlue
    call piscaRed
    call svez
    call validaR
    call validaB
    call validaR
    call validaB
    call validaB
    call validaR
    
    
    ret

level5:
    
    call init 

    call piscaRed
    call piscaRed
    call piscaBlue
    call piscaRed
    call piscaBlue
    call piscaBlue
    call piscaRed
    call svez
    call validaR
    call validaR
    call validaB
    call validaR
    call validaB
    call validaB
    call validaR

    ret
level6:
    call init

    call piscaGreen2
    call piscaRed2
    call piscaYellow2

    call svez

    call validaG
    call validaR
    call validaY

    ret

level7:
    call init

    call piscaBlue2
    call piscaGreen2
    call piscaYellow2
    call piscaBlue2

    call svez

    call validaB
    call validaG
    call validaY
    call validaB

    ret

level8:
    call init

    call piscaYellow2
    call piscaRed2
    call piscaGreen2
    call piscaGreen2
    call piscaRed2

    call svez

    call validaY
    call validaR
    call validaG
    call validaG
    call validaR

    

    ret

level9:
    call init

    call piscaBlue2
    call piscaRed2
    call piscaGreen2
    call piscaGreen2
    call piscaRed2
    call piscaYellow2

    call validaB
    call validaR
    call validaG
    call validaG
    call validaR
    call validaY


    ret

level10:
    call init

    call piscaYellow2
    call piscaGreen2
    call piscaBlue2
    call piscaRed2
    call piscaYellow2
    call piscaGreen2
    call piscaBlue2
    call piscaRed2

    call validaY
    call validaG
    call validaB
    call validaR
    call validaY
    call validaG
    call validaB
    call validaR
    

    ret

piscaRed2:

    call ledR
    call delay1s
    call jogoVisu
    call delay05s
    ret

piscaBlue2:

    call ledB
    call delay1s
    call jogoVisu
    call delay05s
    ret

piscaGreen2:

    call ledG
    call delay1s
    call jogoVisu
    call delay05s
    ret

piscaYellow2:

    call ledY
    call delay1s
    call jogoVisu
    call delay05s
    ret

piscaRed:

    call ledR
    call delay1s
    call jogoVisu
    call delay1s
    ret

piscaBlue:

    call ledB
    call delay1s
    call jogoVisu
    call delay1s
    ret

piscaGreen:

    call ledG
    call delay1s
    call jogoVisu
    call delay1s
    ret

piscaYellow:

    call ledY
    call delay1s
    call jogoVisu
    call delay1s
    ret


init:
    call cleanTela
    call jogoVisu
    call delay1s
    ret


validaR:
    call lerChar
    cmp al, 'r'
    jne errou
    call piscaRed

    ret

validaG:
    call lerChar
    cmp al, 'g'
    jne errou
    call piscaGreen

    ret

validaY:
    call lerChar
    cmp al, 'y'
    jne errou
    call piscaYellow

    ret

validaB:
    call lerChar
    cmp al, 'b'
    jne errou
    call piscaBlue

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



drawSprite:

    

    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

	push 0a000h
    pop es	; posicionando es no inicio da tela
	
	mov ax, [drawY]
	mov bx, 320	; 320 eh a quantidade de pixels na linha
	mul bx	; vai fazer ax * bx, resultado guardado em [dx][ax]
	add ax, [drawX] ; agr adiciona quantos pixels da posicao x

	mov di, ax	;o ax vai ser a posiçao do primeiro pixel que a gente vai printar, entao vamo salvar em di

	xor cx,cx	;zero tudo menos o dx, porque vou usar o di
    xor ax,ax
    xor bx,bx

	

	.printLinha:
		lodsb	;aponta para o caractere da sprite, carrega e incrementa si
        cmp al, 13
		mov [es:di], al	;es+deslocamento = primeiro pixel da tela + quantos pixels eu vou pular pra chegar no lugar q eu quero e al tem a cor que eu vou colocar. esse eh o print

		inc di	; incremendo o di pra ser a proxima posicao do pixel que vai ser printado
		inc cx	; incremento o contador de colunas
		cmp cx, [spriteW]	; faz a checagem pra ver se terminou a linha da sprite
		jne .printLinha	
	
	.proxLinha:
		xor cx, cx	; zera o contador de colunas
		sub di, [spriteW]	; retorna para a primeira coluna
		add di, 320	; vai pra proxima linha
		inc bx	; contador de linhas printadas
		cmp bx, [spriteH]	;checando se terminou de printar todas as linhas da imagem
		jne .printLinha	; se nao terminou, vai pra proxima linha

	.end:
		xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx
		ret

errou:
    call cleanTela

    mov dl, 5
    mov dh, 7
    mov bl, 4
    call andarEspaco
    mov si, errouMsg
    call printString

    mov dl, 5
    mov dh, 9
    mov bl, 2
    call andarEspaco
    mov si, voltarMsg
    call printString

    .espera2:
        call lerChar
        cmp al, '1'
        je start  
        jne .espera2

acertou: 
    call cleanTela
    mov dl, 5
    mov dh, 7
    mov bl, 1
    call andarEspaco
    mov si, acertouMsg
    call printString

     
    mov dl, 5
    mov dh, 9
    mov bl, 14
    call andarEspaco
    mov si, proximoMsg
    call printString

    mov dl, 5
    mov dh, 12
    mov bl, 5
    call andarEspaco
    mov si, sairMsg
    call printString

    .espera1:
        call lerChar
        cmp al, '1'
        je .end
        cmp al, '3'
        je start
        jne .espera1
    .end: 
        ret

svez:

    mov dl, 25
    mov dh, 11
    mov bl, 5
    call andarEspaco
    mov si, suaVezMsg
    call printString
    call delay1s
    call cleanTela
    call jogoVisu

    ret
    
delay1s:

    mov cx, 0fh
    mov dx, 4240h
    mov ah, 86h
    int 15h
    ret

delay05s:

    mov cx, 0x7
    mov dx, 0x0120
    mov ah, 86h
    int 10h
    ret
    



ledY:
    ;amarelo
        mov cx, 46 ;col
        mov dx, 46  ;row
        mov ah, 0ch ; put pixel
        mov al, 14

        loopY:
            inc cx
            int 10h
            cmp cx, 104
            jne loopY

        mov cx, 46  ; reset to start of col
        inc dx      ;next row
        cmp dx, 104
        jne loopY

        margin 46, 46, 1

       

    ret

ledR:
        ;vermelho
        mov cx, 96 ;col
        mov dx, 46  ;row
        mov ah, 0ch ; put pixel
        mov al, 4

        
       loopR:
        inc cx
        int 10h
        cmp cx, 154
        jne loopR

        mov cx, 96  ; reset to start of col
        inc dx      ;next row
        cmp dx, 104
        jne loopR

        margin 46, 96, 5

       
        
    ret

ledG:
    ;verde
        mov cx, 46 ;col
        mov dx, 96  ;row
        mov ah, 0ch ; put pixel
        mov al, 2

        loopG:
        inc cx
        int 10h
        cmp cx, 104
        jne loopG

        mov cx, 46  ; reset to start of col
        inc dx      ;next row
        cmp dx, 154
        jne loopG

        margin 96, 46, 9

    

    ret

ledB:
    ;azul
        mov cx, 96  ;col
        mov dx, 96  ;row
        mov ah, 0ch ; put pixel
        mov al, 1

        loopB:
        inc cx
        int 10h
        cmp cx, 154
        jne loopB

        mov cx, 96  ; reset to start of col
        inc dx      ;next row
        cmp dx, 154
        jne loopB

        xor cx, cx
        xor dx, dx
        xor ax, ax

        margin 96, 96, 13

    

        


    ret

jogoVisu:

    call cleanTela
    mov ah, 0   ; set display mode function.
    mov al, 13h ; mode 13h = 320x200 pixels, 256 colors.
    int 10h     ; set it!

        ;amarelo
        mov cx, 50 ;col
        mov dx, 50  ;row
        mov ah, 0ch ; put pixel
        mov al, 14

        colcount:
        inc cx
        int 10h
        cmp cx, 100
        jne colcount

        mov cx, 50  ; reset to start of col
        inc dx      ;next row
        cmp dx, 100
        jne colcount

    

    ;vermelho
    mov cx, 100 ;col
    mov dx, 50  ;row
    mov ah, 0ch ; put pixel
    mov al, 4

    
    _colcount:
    inc cx
    int 10h
    cmp cx, 150
    jne _colcount

    mov cx, 100  ; reset to start of col
    inc dx      ;next row
    cmp dx, 100
    jne _colcount




        ;verde
        mov cx, 50 ;col
        mov dx, 100  ;row
        mov ah, 0ch ; put pixel
        mov al, 2

        ocolcount:
        inc cx
        int 10h
        cmp cx, 100
        jne ocolcount

        mov cx, 50  ; reset to start of col
        inc dx      ;next row
        cmp dx, 150
        jne ocolcount



        ;azul
        mov cx, 100  ;col
        mov dx, 100  ;row
        mov ah, 0ch ; put pixel
        mov al, 1

        .colcount:
        inc cx
        int 10h
        cmp cx, 150
        jne .colcount

        mov cx, 100  ; reset to start of col
        inc dx      ;next row
        cmp dx, 150
        jne .colcount


    ret
