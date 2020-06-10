

function [J, grad] = computeCost (Theta, coef, y)
  
    m = size(coef,1);
    coef = [ones(m, 1) coef];
  
    h = sigmoid(coef * Theta);
    
    J = - (1/m) * sum(y .* log(h) + (1 - y) .* log(1 - h));
    
    grad = zeros(size(Theta, 1), 1);
    
    for i = 1 : size(grad),
      grad(i) = (1 / m) * sum( (h-y)' * coef(:, i) );
    endfor
  
endfunction
