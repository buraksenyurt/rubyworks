#1 using eval

#puts 'insert a simple code'
#code=gets
#eval code

#someCodes="puts 'whats your name?'
#        name=gets
#        puts name.upcase!()
#"
#eval someCodes

#class_eval
#module_eval
#instance_eval

 #2 Using the_binding
def doSomething
  puts "inside the method"
  return binding
end
bind=doSomething{3.times{puts "arigatou"}}
eval "yield",bind

#3 get constant by name
#const_get , eval'e gore daha hizliymis
# sabit bir degiskeni const_get ile yakalayabiliriz
eValue="E"
piValue="PI"
result1=Math.const_get(eValue)*10
result2=Math.const_get(piValue)*10*10
puts result1,result2

#bir sabit degerini eval ile de alabiliriz
pi=eval "Math::PI"
puts pi

#4 retrieving class by name
module Game
  class Player
    attr_accessor :name,:point
    def initialize(name,point)
      @name,@point=name,point
    end
    def to_s
      "#{@name}-(#{@point})"
    end
  end
end

# sinif module icinde oldugundan :: notasyonu kullaniliyor
obj=Object.const_get("Game::Player") #sinif adini alip
o=obj.new("burk",100) #ornekleme yaptbsenyiriyoruz
puts o.to_s #ve icindeki bir metodu kullaniyoruz

#5 define_method kullanimi
#ilk durum
class GameZone
  def title=(zone_name)
    @title=zone_name
  end
  def title
    @title
  end
  def capacity=(player_count)
    @capacity=player_count
  end
  def capacity
    @capacity
  end
  def color=(color)
    @color=color
  end
  def color
    @color
  end
end
rogue_one=GameZone.new
rogue_one.title="Rogue One"
rogue_one.capacity=48
rogue_one.color="black"
puts rogue_one.title,rogue_one.capacity,rogue_one.color
#define_method ile kodu calisma zamaninda yazdirmak
class GameZoneV2
   PROPERTIES=["title","capacity","color"]
   
   PROPERTIES.each{|p|
     define_method("#{p}="){|i|
       instance_variable_set("@#{p}",i)
     }
     
     define_method("#{p}"){
       instance_variable_get("@#{p}")
     }
   }
end
zone_gold=GameZoneV2.new
zone_gold.title="Gold zone"
zone_gold.capacity=34
zone_gold.color="Gold"
puts zone_gold.title,zone_gold.capacity,zone_gold.color
#tabii ki Ruby'de attribute_accessor diye bir gercek var. Bu yuzden yukaridaki kod parcasi cok da anlamli degil ama define_method kullanimina bir ornek olarak dusunulebilir.

class Person
  def createGetterSetter(*args)
    Array(args).each{|attr|
      self.class.send(:define_method,"#{attr}="){|v|
        instance_variable_set("@#{attr}", v)
      }
      self.class.send(:define_method,"#{attr}") {
        instance_variable_get("@#{attr}")
      }
    }
  end
end
logan=Person.new
logan.createGetterSetter("name","salary")
logan.name="burki"
logan.salary=1250
puts "#{logan.name}-(#{logan.salary})"

class Person
  def createAttr(*args)
    Array(args).each{|attr|
      self.class.send(:attr_accessor,"#{attr}")
    }
  end
end
logan=Person.new
logan.createAttr(:name,:salary)
logan.name="burki"
logan.salary=1250
puts "#{logan.name}-(#{logan.salary})"