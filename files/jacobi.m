%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% jacobi %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% Autora: Fernanda Amaral Melo                                           %
% Contato: fernanda.amaral.melo@gmail.com                                %
%                                                                        %
% jacobi resolve Ax=b usando o metodo iterativo de gauss Jacobi          %
% Parametros:                                                            %
% - A : matriz nxn                                                       %
% - b : matriz nxm                                                       % 
% - [x] : matriz de valores iniciais                                     % 
% - [M] : Numero maximo de iteracoes                                     %
% - [tau] : valor minimo para convergencia                               %
% Saida:                                                                 %
% - x : matriz nxm da solucao aproximada de Ax=b                         %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x=jacobi(A,b,x,M,tau)

  if nargin<3 | isempty(x), x=b; end
  if nargin<4 | isempty(M), M=1000; end
  if nargin<5 | isempty(tau), tau=sqrt(eps); end

  d=diag(A);

  r0=max(abs(b-A*x));
  for i=1:M
    r=b-A*x; % residual
    dx=r./d; % new direction
    x=x+dx; % new value
    % convergence check
    if all(abs(r)<tau) & all(abs(dx)<tau), return; end
    % divergence check
    if max(abs(r))>100*r0;
      disp('WARNING: Iterations diverging');
      return
    end
  end

  if i==M, disp('WARNING: Maximum iterations exceeded'); end