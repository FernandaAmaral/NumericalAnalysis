%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% gseidel %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %
% gseidel resolve Ax=b usando interacao de Gauss-Seidel.                 %
% Parametros:                                                            %
% - A : nxn matrix                                                       %
% - b : nxm matrix                                                       %
% - [x] : nxm matrix of starting values. Default: b                      %
% - [M] : maximum number of iterations                                   %
% - [tau] : convergence tolerence                                        %
% - [lambda] : over-relaxation parameter                                 %
% Saida:                                                                 %
% - x : nxm matrix of approximate solutions to Ax=b                      %
%                                                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function x=gseidel(A,b,x,M,tau,lambda)

  if nargin<3 | isempty(x), x=b; end
  if nargin<4 | isempty(M), M=1000; end
  if nargin<5 | isempty(tau), tau=sqrt(eps); end
  if nargin<6 | isempty(lambda), lambda=1; end

  Q=tril(A);
  r=b-A*x;
  divtol=100*max(abs(r));
  for i=1:M
    dx=Q\r; % new direction
    x=x+lambda*dx; % new value
    r=b-A*x; % new residual
    % convergence check
    if all(abs(r)<tau) & all(abs(dx)<tau), return; end
    % divergence check
    if max(abs(r))>divtol;
      disp('WARNING: Iterations diverging');
      return
    end
  end

  if i==M, disp('WARNING: Maximum iterations exceeded'); 
  end
