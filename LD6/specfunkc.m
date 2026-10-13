function varargout = specfunkc(varargin)
% specfunkc - speciali funkcija su kintamu argumentu skaiciumi.
% 
% y = specfunkc(a) grazina a^2.
% y = specfunkc(a,b) palygina a^2 ir b^3, grazina didesniojo is ju kosinusa.
% 
% Pavyzdziai:
% specfunkc(3) -> 9
% specfunkc(2,1) -> cos(4)

if nargin == 1
    varargout{1} = varargin{1}.^2;
elseif nargin == 2
    a = varargin{1}.^2;
    b = varargin{2}.^3;
    varargout{1} = cos(max(a,b));
end
end