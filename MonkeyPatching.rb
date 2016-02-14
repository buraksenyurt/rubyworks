#Monkey Patching

class String
 
def KarizmatikYap
 
newWord=""
 
self.split("").each{|c| newWord<<c<<" "}
 
newWord.chop
 
end
 
end
 
if __FILE__ == $0
 
puts "Mesajiniz nedir?"
 
mesaj=gets
 
karizmatikHali=mesaj.KarizmatikYap
 
puts karizmatikHali
 
end
