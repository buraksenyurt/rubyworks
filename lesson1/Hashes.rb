class Person
 
                attr_reader :name,:age
                 
                def initialize(personName,personAge) 
                               @name=personName
                               @age=personAge          
                end                
end
 
if __FILE__==$0
                 
                planes={
                        PLN1001:"F-14 Tomcat",
                        PLN1034:"F-22 Raptor",
                        PLN9283:"F-4 Phantom"                              
                }                
                puts planes.inspect
  
                puts planes[:PLN1034]
                puts planes.keys
                p planes.values
                 
                oldPlanes=Hash.new
                oldPlanes["OPLN109"]="Messerschmitt 109"
                oldPlanes["OPLN100"]="Spitfire"
  
                oldPlanes.each{ |k,v| puts "#{k} = #{v}"}
                puts oldPlanes["OPLN109"] 
 
                weapons=Hash[:arms1,"Sword",:arms2,"Boken",:arms3,"Canon Ball"]               
                p weapons
                
                playerPoints={
                        Rogu1:90,
                        Black:120,
                        Silver:80,
                        Burki:40,
                        Strangers_in_the_night:800,
                        Avanger:300,
                        Hulk:1200
                }              
                loosers=playerPoints.select{|name,point| point<200}
                p loosers
  
                burki=Person.new "Burak Selim Senyurt",39
                ruki=Person.new "Ru Yu Ki",36 
                persons={
                        person1:burki,
                        person2:ruki
                }
                p persons.inspect
end
