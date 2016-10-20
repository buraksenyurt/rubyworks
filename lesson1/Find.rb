#bir dosyadaki belli kritere uygun satirlari bulmak
puts 'dosya adi?'
fileName=gets
puts 'aranan grup?'
groupName=gets
puts groupName
songs=File.readlines('SomeAlbums.txt')
matches=songs.select{|line| line =~ /'#{groupName}'/}
puts matches 