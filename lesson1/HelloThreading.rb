##Sample 1
# puts "Main Thread #{Thread.current}\t#{Time.now}"

# t1=Thread.new{
  # puts "t1 #{Thread.current}\t#{Time.now}"
  # sleep 2
  # puts "t1 #{Thread.current}\t#{Time.now}"
# }

# t2=Thread.new do
  # puts "t2 #{Thread.current}\t#{Time.now}"
  # sleep 4
  # puts "t1 #{Thread.current}\t#{Time.now}"
# end

# t1.join
# t2.join
# puts "Main thread #{Thread.current}\t#{Time.now}"


##Sample 2
# total=0
# threads=[]

# 5.times{
  # threads<<Thread.new{
    # sleep(rand(0.1)/10.0)   
    # total+=rand(10)
    # Thread.current["forThis"]=total
  # }
# }
# threads.each{|t|
    # t.join
    # puts t["forThis"]
# }
# puts "Total = #{total}"

##sample 3
# for tryCount in 1..5
  # total1=total2=0
  # thread1=Thread.new{
    # while true
      # total1+=1
    # end
  # }
  # thread1.priority=1
  # thread2=Thread.new{
    # while true
      # total2+=1
    # end
  # }
  # thread2.priority=-1
  # sleep 1
  # puts "Total1=#{total1}\nTotal2=#{total2}"
  # puts "#{format("%.5f", (total1.to_f/total2.to_f))}\n\n"
# end

threads=[]
threads<<Thread.new{
  puts "thread 1 is running"
  sleep 10
  puts "end of thread 1"
}
threads<<Thread.new{
  puts "thread 2 is running"
  sleep 3
  puts "end of thread 2"
  }
threads<<Thread.new{
  puts "thread 3 is running"
  sleep 1
  raise ArgumentError,"Some argument error"
  puts "end of thread 3"
}
#threads.last.abort_on_exception=true 
puts "This is main thread"
threads.each{|t|t.join}
puts "end of main thread"