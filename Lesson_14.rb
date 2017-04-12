=begin
Temel dosya işlemleri
=end

require "Entities"

products=[]
products.push(Product.new("LG Fırın",1000))
products.push(Product.new("Vestel mini buzdolabı",450))
products.push(Product.new("Miele Bulaşık Makinesi",2500))

# dosyayı yazma modunda oluşturduk ve içerisinde products içeriğini aktardık
File.open "products.dat","w" do |writer|
  products.each{|p|
    writer.puts p.to_s
  }
end

#append modda açıp dosya sonuna yeni bir ürün ekledik
newProduct=Product.new("Dell Latitude Notebook",5250.99)
File.open "products.dat","a" do |writer|
  writer.puts newProduct.to_s
end

# dosyayı okuma modunda açıp içeriğini yazdırdık
File.open "products.dat","r" do |reader|
  puts reader.read
end
puts
#farklı bir okuma şekli de satır satır okuma
i=1
File.open("products.dat").each_line{|line|
  puts "#{i}-> #{line}"
  i+=1
}

puts

#Dosyayı append modda açtıktan sonra satır satır ekleme işlemleri de yapabiliriz
#Tabii append nedeniyle bu kodu çalıştırdıkça aşağıdaki içerik arka arkaya eklenecektir
note=File.open("Notes.txt","a")
note.puts "Bugün #{Time.now}"
note.puts "Güzel bir gün müydü?"
note.puts "Aslında başka ilginç şeyler de oldu\n\n\n"
note.puts "Neyse görüşürüz"

#Dosya içeriğini tek ifade ile de okuyabiliriz
puts File.open("Notes.txt").readlines