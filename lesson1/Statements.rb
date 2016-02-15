if __FILE__==$0
 
puts "Nickname?"
 
nickName=gets
 
 
 
#1 Bilinen if kullanimi
 
        if nickName.length==0
 
puts "Lutfen bir nickname giriniz"
 
elsif nickName.length>8
 
puts "Cok uzun. 8 karakteri gecmemeli"
 
else
 
puts "ivit. Simdi oldu.\nMiraba #{nickName}"
 
end
 
 
#2 Bilinen case kullanimi
 
networkStatus="Busy"
 
url=case networkStatus
 
when "Available"
 
"http://deploysrv01/"
 
when "Busy"
 
"http://deploysrv02/"
 
when "TooBusy"
 
"http://deploysrv03/"
 
when "Fuzzy"
 
"http://deploysrv04/"
 
else
 
"http://masterserver/errorpage.html"
 
end
 
puts url
 
 
 
#3 Bazi dongu kullanimlari
 
lastValue=48
 
for i in 0..lastValue
 
puts i if i%6==0 #Statement Modifier
 
end
 
 
 
#4
 
for i in 1..3
 
for j in 1..5
 
printf "(#{i},#{j})\t"
 
end
 
puts
 
end
 
 
 
#5
 
total=0
 
1.upto(100){ |n| total+=n}
 
puts total
 
 
 
#6
 
5.times do |n|
 
printf "#{n+3} "
 
end
 
puts
 
  
 
#7
 
5.times{|n| printf "#{n+3} "}
 
puts
 
  
 
#8
 
x=0
 
while x<100
 
printf "#{x}," if x%7==0 #Statement Modifier
 
x+=1
 
end
 
puts
 
  
 
#9
 
nbr=0
 
puts nbr=nbr+3 while nbr<10 #Statement Modifier
 
  
 
#10
 
while 1
 
puts "\nLutfen sifrenizi giriniz"
 
password = gets.chomp
 
break if password=="P@ssw0rd" #Statement Modifier
 
end
 
puts "Buenos Diyas\n"
 
  
 
#11
 
i=1
 
total=0
 
loop do
 
break if i>100 #Statement Modifier
 
total+=i
 
i+=1
 
end
 
puts "1den 100e sayi toplami #{total}\n"
 
  
 
#12
 
matchPoint=3
 
puts "Tam puan degil" unless matchPoint>10 #Statement Modifier       
 
end
