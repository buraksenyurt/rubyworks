class Location
 
def initialize(x,y,z) # Constructor
 
@x,@y,@z=x,y,z # Coklu atama ifadesi
 
end
 
def x
 
@x
 
end
 
def y
 
@y
 
end
 
def z
 
@z
 
end
 
def *(n) # Carpma islemi icin overloading
 
if n.is_a?(Numeric) 
 
Location.new(@x*n,@y*n,@z*n)
 
elsif n.is_a?(Location) 
 
Location.new(@x*n.x , @y*n.y , @z*n.z)
 
end
 
end
 
def +(n) # Toplama islemi icin overloading
 
if n.is_a?(Numeric) 
 
Location.new(@x+n,@y+n,@z+n)
 
elsif n.is_a?(Location) 
 
Location.new(@x+n.x, @y+n.y , @z+n.z)
 
end
 
end
 
def -@ # - isareti icin overloading
 
Location.new(-@x,-@y,-@z)
 
end
 
def <=>(l) # <=> karsilastirma operatoru icin overloading
 
if l.is_a?(Location)
 
if @x==l.x && @y==l.y && @z==l.z
 
0
 
elsif @x>l.x && @y>l.y && @z>l.z
 
1
 
elsif @x<l.x && @y<l.y && @z<l.z
 
-1
 
else
 
-99 #ivit burasi biraz anlamsiz oldu
 
end
 
end
 
end
 
def to_s #Overriding
 
"#{@x};#{@y};#{@z}"
 
end
 
end
 
 
 
if __FILE__==$0
 
loc1=Location.new 10,10,20
 
puts loc1.to_s
 
  
 
loc2=loc1*3
 
puts loc2.to_s
 
  
 
loc3=loc1*loc2
 
puts loc3.to_s
 
  
 
loc4=Location.new 5,5,10
 
puts loc4.to_s
 
loc5=-loc4
 
puts loc5.to_s
 
  
 
loc6=Location.new -1,-5,0
 
puts loc6.to_s
 
  
 
loc7=loc6+Location.new(5,8,15) #metodlarda istenirse parantez kullanılabilir ama zorunluluk degildir
 
puts loc7.to_s
 
  
 
puts "loc7<=>loc6:"+(loc7<=>loc6).to_s
 
  
 
loc8=Location.new 1,1,1
 
loc9=Location.new 1,1,1
 
puts "loc8<=>loc9:"+(loc8<=>loc9).to_s
 
end
