function [fout,xout] = scalingFunction(h,iter)
% INPUTS: h is the wavelet filter coefficients, 
%   iter is the number of iterations to run

% OUTPUTS: fout is the scaling function,
%   xout is the corresponding x-values

% Recursion:
% eta(0) = rectangularPulse(x)
% eta(L) = sqrt(2)*sum(h[n] * eta(L-1)[2*x-n])

f = 1; % i.e., for x >= 0, f = rectangularPulse(x) = [1,0,0,0,...]
for i=1:iter
    f = sqrt(2)*conv(f,h); % g(x) = conv(f(x),h(x)) = sum( h(n)*f(x-n) )
    if i < iter
        f = upsample(f,2); 
    end
end
fout = f;
xout = linspace(0,length(h)-1,length(fout));
end