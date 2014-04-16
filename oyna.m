function [box] = oyna(matris,buton,deger)
    m = 0;
    for i=1:3
       for j=1:3
          m = m+1; 
          if m == buton
             matris(i,j) = deger;
             box = matris;
          end
       end
    end
end