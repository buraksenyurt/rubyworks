#Array Fundementals
 
if __FILE__ == $0               
 
                 #baziNesneler isimli bir dizi olusturarak ise baslayalim
 
                 baziNesneler=[1,1.3,"Burk",true,nil,-88]
 
                 puts baziNesneler.inspect
                 
 
                 # << ile eleman eklemek
 
                 baziNesneler<<"Sepet"
 
                 puts baziNesneler.inspect
 
                 
 
                 #En sagdan herhangi bir siradaki elemani cekmek
 
                 puts "Sondan 3ncu eleman "+baziNesneler[-4].to_s
 
                 
 
                 #ilk veya son elemanlara gitmek
 
                 first=baziNesneler.first
 
                 last=baziNesneler.last    
 
                 puts "ilk elaman #{first}\nson Eleman #{last}"
 
                 
 
                 #Kesisim kumesini bulmak
 
                 dizi1=[1,3,5,7]
 
                 dizi2=[3,7,11,13,15]
 
                 dizi3=dizi1 & dizi2
 
                 puts dizi3.inspect
 
                 
 
                 #Dizileri birlestirmek
 
                 dizi4=dizi1+dizi2+dizi3
 
                 puts dizi4.inspect
 
                 
 
                 #Diziden birden fazla eleman cikartmak
 
                 dizi5=dizi4-[3,5,7]
 
                 puts dizi5.inspect
 
                 
 
                 #Baska islemler icin başka bir dizi tanimi
 
                 nesneler=["kitap",1,true,nil,"parfum",Math::PI]
 
                 
 
                 #Dizinin ilk hali
 
                 puts nesneler.inspect
 
                 
 
                 #pop ile son elemani diziden cikartarak elde etmek
 
                 puts nesneler.pop
 
                 puts nesneler.inspect
 
                 
 
                 #push ile dizinin sonuna eleman/elamanlar eklemek
 
                 nesneler.push("Corap",1976,false)
 
                 nesneler.inspect
 
                 
 
                 #shift ile ilk elemani diziden cikartarak almak
 
                 puts nesneler.shift
 
                 puts nesneler.inspect
 
                 
 
                 #unshift ile dizinin basina eleman/elemanlar eklemek
 
                 nesneler.unshift("o zaman dans","renk")
 
                 puts nesneler.inspect
 
  
 
end
