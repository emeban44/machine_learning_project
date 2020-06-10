
function p = predict (theta, coef)

  m = size(coef,1);
  coef = [ones(m,1) coef];
  
  p = round(sigmoid(coef * theta));

endfunction
