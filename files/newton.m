%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Newton %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% newton encontra a raiz de uma funcao usando o metodo de newton raphson %
% Parametros:                                                            %
% - e1, e2 precisoes                                                     %
% - x0 apoximacao inicial                                                %
% Saida:                                                                 %
% - root : raiz aproximada                                               %
%                                                                        %
% DEVE-SE PREENCHER A FUNCAO NO ARQUIVO f.m PARA APLICAR O METODO        %
% DEVE-SE PREENCHER A DERIVADA DA FUN??O NO ARQUIVO f_deriv.m            %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function root=newton(x0,e1,e2)

    x(1)=x0;
    k=2;

    while (k~=0)
        x(k)= x(k-1) - f(x(k-1)) / f_deriv(x(k-1));
       if (abs(f(x(k)))<e1 || abs(x(k)-x(k-1))<e2) root=x(k); k=0;
       else k=k+1;
       end
    end
end