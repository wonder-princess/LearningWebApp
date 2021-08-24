require './sqluser'

class Main
    def self.start
        obj = Sqluser.new()
        obj.setValue
        str = obj.outputUser
    end
end

class Test
    class << self
        def start

        end
        def foo
            puts'\'foooooooooooooo'
        end
    end
end

# Test.start
Test.foo

# メソッドを実行
puts Main.start

