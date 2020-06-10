
function c1 = generateCoefficient (t)
   
    c1 = t(:, [6,10]);
    for i=1:length(t)
        c1(i,1) = t(i,3) + t(i,4) - t(i,5) + t(i,6) + 5;
        c1(i,2) = t(i,7) + t(i,8) - t(i,9) + t(i,10); 
     endfor
     
     
endfunction
