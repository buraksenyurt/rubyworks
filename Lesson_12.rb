=begin
  Mixins
=end

module Greetings
  def hello
    puts "hello"
  end
  
  def bonjur
    puts "bonjur"
  end
  
  def hola
    puts "hola!"
  end
  
  def self.Translate(words)
    puts "words is transleting"
  end
end

class User
  include Greetings
  
end

class Employee
  extend Greetings
end

burki=User.new
burki.hola()
burki.bonjur
burki.hello()
Greetings.Translate("what a wonderfull world") 
#self describe nedeniyle include edildiği instance üzerinden değil doğrudan module adı üzerinden kullanılabilir.

Employee.hola #extends nedeniyle nesne örneğine gerek kalmadan çağırılabilmiştir