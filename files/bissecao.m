%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Bissecao %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% Bissecao encontra a raiz de uma funcao f em um intervalo [a b]         %
% Parametros:                                                            %
% - a , b intervalo que possui raiz                                      %
% - e erro minimo (criterio de parada)                                   %
% Saida:                                                                 %
% - x : raiz aproximada                                                  %
%                                                                        %
% DEVE-SE PREENCHER A FUNCAO NO ARQUIVO f.m PARA APLICAR O METODO        %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x=bissecao(a,b,e)

k=1;
    while ((b-a)>e) 
        M=f(a);
        x(k)=(a+b)/2

        if (f(a)*f(x(k))>0) a=x(k);
        else b=x(k);
        end

        k=k+1;
     end
