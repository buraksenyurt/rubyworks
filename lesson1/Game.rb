#Working with temporary files
require 'tempfile'

f=Tempfile.new('temporaryFile')
f.write 'Some game datas'
f.write 'Current player is Burki'
f<<Time.now
f<<'---'
f.rewind
puts f.read
puts f.path
sleep(20)
f.close

