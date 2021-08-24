class Sqluser
    attr_accessor :host, :username, :password, :database, :encoding

    def setValue()
        @host = 'localhost'
        @username = 'sekai'
        @password = '8888'
        @database = 'booklist'
        @encoding = 'utf8'
    end

    def outputUser
        user = "host: \'#{@host}\', username: \'#{@username}\', password: \'#{@password}\', database: \'#{@database}\', encoding: \'#{@encoding}\'"
    end

    def host
        @host
    end

    def username
        @username
    end

    def password
        @password
    end

    def database
        @database
    end

    def encoding
        @encoding
    end
end

