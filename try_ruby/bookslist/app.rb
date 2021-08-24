require 'sinatra'
require 'mysql2'

require './sqluser'
require './sqlquery'

user = Sqluser.new()
user.setValue
# connectStr = userObj.outputUser

getBookslist = Sqlquery.executeQuery("getBookslist")
sendBookTitle = Sqlquery.executeQuery("sendBookTitle")

get '/' do
    client = Mysql2::Client.new(
        host: user.host, 
        username: user.username, 
        password: user.password, 
        database: user.database, 
        encoding: user.encoding
    )
    @records = client.query(getBookslist)
    erb :booklist
end

post '/' do
    client = Mysql2::Client.new(
        host: user.host, 
        username: user.username, 
        password: user.password, 
        database: user.database, 
        encoding: user.encoding
    )
    book_title = params['book_title']
    statement = client.prepare(sendBookTitle)
    statement.execute(book_title)

    @records = client.query(getBookslist)

    erb :booklist
end