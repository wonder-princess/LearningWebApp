class Sqlquery
    class << self
        def executeQuery(type)
            if type == "getBookslist"
                getBookslist               
            elsif type == "sendBookTitle"
                sendBookTitle
            end
        end

        def getBookslist
            query = "SELECT * FROM books ORDER BY created_at DESC"
        end

        def sendBookTitle
            query = "INSERT INTO books (book_title) VALUES(?)"
        end
    end
end

