require 'sqlite3'
 
begin
 
db=SQLite3::Database.open "AdventureWorks.db"
db.execute "create table if not exists Product(product_id integer primary key autoincrement,title text not null,list_price int not null)"
 
db.execute "insert into Product (title,list_price) values ('Polo Lanc 1.2 TSI',65000)"
db.execute "insert into Product (title,list_price) values ('Golf Sport 2.0 TDI',90000)"
db.execute "insert into Product (title,list_price) values ('Subaru impreza 4x4',120000)"
 
select=db.prepare "Select product_id,title,list_price from Product"
resultSet=select.execute
 
resultSet.each{ |row|
puts row.join "\s"
}
 
rescue SQLite3::Exception => excp
puts excp
ensure
select.close if select
db.close if db
end
