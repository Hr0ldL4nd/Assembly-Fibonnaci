#código fibonacci - Orlando Moreira

addi a0, zero, 10 #estamos definindo o número de ciclos
addi a4, zero, 1  #contador, sabendo que já temos os 2 primeiros termos

addi a1, zero, 0 # primeiro operando, com valor inicial de 0
addi a2, zero, 1 # segundo operando, com valor inicial de 1

addi a3, zero, 0 # armazena o valor do termo a cada ciclo, o valor do décimo termo é 55

for:
add a3, a1, a2     #a3 recebe a soma dos dois termos anteriores
    add a1, zero, a2   #a1 recebe a2
    add a2, zero, a3   #a2 recebe a3
    addi a4, a4, 1     #atualizamos o valor do contador
    blt a4, a0, for    #se condição atendida, vai para outro ciclo
    
done:
    #a cada ciclo, o registrador a3 armazena o valor n-ésimo termo da sequência
