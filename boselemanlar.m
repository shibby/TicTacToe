function [sonuc] = boselemanlar(matris)
   boslar = [];
   m = 0;
   for i=1:3
      for j=1:3
         m=m+1;
         if matris(i,j) == 0
             boslar = [boslar m];
         end
      end
   end
   msize = numel(boslar);
   sonuc = boslar(randperm(msize, 1));
end