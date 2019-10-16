# NumericalAnalysis

[Este projeto foi desenvolvido em outra plataforma de controle de versionamento e exportada para o GitHub após o término da disciplina Cálculo Numérico - UnB]

Estrutura:

```
files
    |--- methods: Algoritmos de aproximação
    |--- estimated: Função (e derivada) cuja raiz se quer aproximar
```

Métodos de aproximação numérica para estimação das raízes de uma função:

+ Bisseção: método de busca de raízes que bissecta repetidamente um intervalo e então seleciona um subintervalo contendo a raiz para processamento adicional.
+ Newton-Raphson: escolhe-se uma aproximação inicial para a raiz. Após isso, calcula-se a equação da reta tangente (por meio da derivada) da função nesse ponto e a interseção dela com o eixo das abcissas, a fim de encontrar uma melhor aproximação. Repetindo-se o processo, cria-se um método iterativo para encontrar a raiz da função. 
+ Posição falsa: método numérico usado para resolver equações lineares definidas em um intervalo [a, b], partindo do pressuposto de que haja uma solução em um subintervalo contido em [a, b]. E assim, diminuindo esse subintervalo em partes cada vez menores, a solução estará onde a função tem sinais opostos, segundo o Teorema do Valor Intermediário
+ Secante: algoritmo de busca de raízes que usa uma sequência de raízes de linhas secantes para aproximar cada vez melhor a raiz de uma função f.


Métodos de aproximação numérica para resolução de sistemas lineares:

+ Gauss-Seidel
+ Jacobi