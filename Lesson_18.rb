=begin
Basit _lambda kullanımına ait örnekler
=end

firstLambda=lambda do |string|
  
  if string=="try"
    return "There's no such thing"
  else
    return "Do or do not. There is no try."
  end
  
end

puts firstLambda.call("try")
puts firstLambda.call("something")

#Bir lambda değişkeni aşağıdaki gibi tanımlanabilir
sumFunc=->(x,y){puts "#{x+y}"}
sumFunc.call(4,5)

#lambda'larda tüm parametrelerin çağırım sırasında girilmesi gerekir.
#Ayrıca default değer ataması da söz konusudur.
greeting=->(message="Merhabaaa"){puts message.upcase}
greeting.call()
greeting.call("Greetings monşer")