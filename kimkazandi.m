function [kazanan] = kimkazandi(matris)
%eger kimin kazandigina dair sadece if kullanarak manuel kontrol yapsaydik
%toplamda 11-12 adet if kullanacaktik. boylelikle amelelik etmis olduk ama
%keyif aldik :)
    kazanan = 0;
    for i=1:3
        if matris(i,1) == matris(i,2) && matris(i,2) == matris(i,3) && kazanan == 0    
            if matris(i,1) == 1
               kazanan = 1;
               msgbox('Sen kazandin :)');
            elseif matris(i,1) == 2
               kazanan = 2;
               msgbox('Bilgisayar kazandi :(');
            end
        end
    end
    for j=1:3
        if matris(1,j) == matris(2,j) && matris(2,j) == matris(3,j) && kazanan == 0   
            if matris(1,j) == 1
               kazanan = 1;
               msgbox('Sen kazandin :)');
            elseif matris(1,j) == 2
               kazanan = 2;
               msgbox('Bilgisayar kazandi :(');
            end
        end
    end
    
    if matris(1,1) == matris(2,2) && matris(2,2) == matris(3,3) && kazanan == 0
        if matris(1,1) == 1
               kazanan = 1;
               msgbox('Sen kazandin :)');
        elseif matris(1,1) == 2
               kazanan = 2;
               msgbox('Bilgisayar kazandi :(');
        end
    end
    
    if matris(1,3) == matris (2,2) && matris(2,2) == matris(3,1) && kazanan == 0
        if matris(2,2) == 1
               kazanan = 1;
               msgbox('Sen kazandin :)');
        elseif matris(2,2) == 2
               kazanan = 2;
               msgbox('Bilgisayar kazandi :(');
        end
    end
    
    %beraberlik durumunu kontrol ediyoruz
    beraberlik = 1;
    for i=1:3
       for j=1:3
          if matris(i,j) == 0
             beraberlik = 0; 
          end
       end
    end
    if(beraberlik == 1 && kazanan == 0)
        kazanan = 2;
        msgbox('Yenisemediniz');
    end
end