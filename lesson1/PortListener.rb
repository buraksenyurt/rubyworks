require 'socket'
sockets=Hash.new
sockets={
  :ftp=>21,
  :ssh=>22,
  :smtp=>25,
  :http=>80,
  :https=>443,
  :mssql=>1433,
  :oracle=>1521,
  :mysql=>3306,
  :postrgesql=>5432,
  :none=>65538
}

def get_port_status(host,port)
  begin
    socket = TCPSocket.new(host, port)
    status = "open"
  rescue Errno::ECONNREFUSED, Errno::ETIMEDOUT
    status = "closed"
  end
end

sockets.keys.each{|k|
  status=get_port_status("localhost",sockets[k])
  puts "#{k} #{sockets[k]} (#{status})" 
}
