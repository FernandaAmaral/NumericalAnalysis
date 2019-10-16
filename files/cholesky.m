%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Cholesky %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% Cholesky encontra o fator de cholesky g de uma matriz quadrada A       %
% Parametros:                                                            %
% - A matriz quadrada                                                    %
% Saida:                                                                 %
% - g fator de cholesky                                                  %
%                                                                        %                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function g=cholesky(A) 

    if nargin ~= 2
       error 'Only two inputs are required'
    end

    if ~(isnumeric(A)&isnumeric(b))
        error 'input must be numeric'
    end

    [nRow,nCol]=size(b);
    if nRow>1 & nCol>1
        error 'b must be a vector'
    end

    [nRow,nCol]=size(A);
    if nRow ~= nCol
        error 'Matrix A must be square'
    end
    
    if length(b) ~= nRow
       error 'b length does not match A matrix dimension'        
    end
    
    b=b(:);
    
    [L,U,P] = nma_LU(A,0);
    y       = nma_ForwardSub(L,P*b);
    x       = nma_BackSub(U,y);

end
