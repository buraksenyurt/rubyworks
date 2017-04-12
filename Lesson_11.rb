=begin
Modules
=end

module Database
  
  def AvailableProviders
    providers=["oracle","mysql","sqlserver","cassandra"]      
  end
  MAX_TIMEOUT=6000
  
  class Connection
    attr_accessor :connectionString
    
    def initialize(connectionString)
      @connectionString=connectionString
    end
    
    def Connect(timeout=1000)
      if(timeout>MAX_TIMEOUT)
        puts "timeout will be set to default value(600)"
      else
        puts "connecting...(timeout=#{timeout})"
      end
    end
    
    def Disconnect()
      puts "disconnecting..."
    end
  end
end

myConnection=Database::Connection.new("default con str")
myConnection.Connect(6005)
myConnection.Disconnect()
myConnection.Connect()
myConnection.Disconnect()
myConnection.Connect(3000)
myConnection.Disconnect()

include Database 
#include olmadan da kullanabiliriz. 
#Bunun için Database::AvailableProviders demek yeterli olur
providers=AvailableProviders()
providers.each{|p|puts p}