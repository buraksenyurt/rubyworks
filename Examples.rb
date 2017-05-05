=begin 
Ruby seminer ornekleri
=end

puts "Merhaba ben Robi.Senin adın ne? :)"
name=gets
3.times{puts "Hoşgeldin #{name.upcase}"}

nesnelerim=[name,Math::PI,-90,Complex(3,-4),true,false,1230230000000000000000000009239293293293,0.99]
nesnelerim.each do |n|
  puts n.class
end

class Oyuncu
  attr_accessor :takma_ad,:seviye
  
  def initialize(takma_ad,seviye=100)
    @takma_ad,@seviye=takma_ad,seviye
  end
  
  def to_s
    "#{@takma_ad}-(#{@seviye})"
  end
end

nesnelerim<<Oyuncu.new("kaylo ren",980)
puts nesnelerim.last.to_s

oyuncular=[]
oyuncular<<Oyuncu.new("coni vik",900)
oyuncular<<Oyuncu.new("mayık cordın",450)
oyuncular<<Oyuncu.new("nadya komenaççi",680)
oyuncular<<Oyuncu.new("lord veyda",500)
oyuncular<<Oyuncu.new("anakin",1200)
oyuncular<<Oyuncu.new("şadov miki",280)
oyuncular<<Oyuncu.new("lara kroft",680)
oyuncular<<Oyuncu.new("tipitip",1150)
oyuncular<<Oyuncu.new("tin tin",918)
oyuncular<<Oyuncu.new("burkii",-100)

public
def find_something
  result=[]
    if block_given?
      self.each do |o|
        result<<o if yield(o)
      end
    end
  result
end

oyuncular.find_something{|oyuncu|puts oyuncu if oyuncu.seviye>1000}
ust_oyuncular=oyuncular.find_something{|o|o if o.seviye>1000}
ust_oyuncular.each{|o|puts o.takma_ad.upcase}
  
class String
  def write_with_space
    result=""
    self.split("").each { |c|
      result<<c<<" "
    }
    result.chomp
  end
end

motto="Ne kadar zevkli bir programlama dili"
puts motto.write_with_space

sample_code="puts \"merhaba adın nedir?\"
            ad=gets
            puts ad.upcase
            "
eval sample_code