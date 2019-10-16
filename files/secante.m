%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Secante %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% Secante encontra a raiz de uma funcao f partindo de duas aproximacoes  %
% Parametros:                                                            %
% - x1 , x2 aproximacoes iniciais                                        %
% - e1, e2 precisoes                                                     %
% - M numero maximo de iteracoes                                         %
% Saida:                                                                 %
% - root : raiz aproximada                                               %
%                                                                        %
% DEVE-SE PREENCHER A FUNCAO NO ARQUIVO f.m PARA APLICAR O METODO        %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root=secante(x1,x2,e1,e2,M)

x(1)=x1;
x(2)=x2;
k=3;

    while(k~=0 && k~=M)
        x(k)=x(k-1) - (f(x(k-1))/(f(x(k-1)) - f(x(k-2))))*(x(k-1)-x(k-2));
        if (abs(f(x(k)))<e1 || abs(x(k)-x(k-1))<e2) 
            root=x(k); 
            k=0;
        else k=k+1;
        end
    end
end