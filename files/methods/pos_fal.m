%%%%%%%%%%%%%%%%%%%%%%%%%%%% Posi??o Falsa %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% Posicao falsa encontra a raiz de uma funcao                            %
% f partindo de um intervalo que contenha a raiz                         %
% Parametros:                                                            %
% - a , b intervalo que possui raiz                                      %
% - e1, e2 precisoes                                                     %
% - M numero maximo de iteracoes                                         %
% Saida:                                                                 %
% - root : raiz aproximada                                               %
%                                                                        %
% DEVE-SE PREENCHER A FUNCAO NO ARQUIVO f.m PARA APLICAR O METODO        %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root=pos_fal(a,b,e1,e2,M) 

k=1;

    while (k~=0 && k~=M)   
        x(k)= (a*f(b) - b*f(a)) / (f(b)-f(a));
        
        if (f(a)*f(x(k))>0) a=x(k);
        else b=x(k); 
        end

        if (abs(f(x(k)))<e2) root=x(k); k=0;
        elseif ((b-a)<e1) root=x(k); k=0;
        else k=k+1;
    end
    
end
