require './human'

class Main
    class << self
        def showSelfintroduction(*humans)
            for human in humans
                human.say
                human.think
            end
        end
        
        # インスタンスの作成
        def start
            tanaka = Human.new('田中 太郎', 25, '電車')
            suzuki = Human.new('鈴木 次郎', 30,	'野球')
            sato = Human.new('佐藤 花子', 20, '映画')

            showSelfintroduction(tanaka, suzuki, sato)
        end
    end
end

class Test
    class << self
        def start
            oresama = Animal.new('俺様', 100)
            oresama.say
            
            sessou = Human.new('拙僧', 30, 'デュクシwww')
            sessou.say
            sessou.think
        end
        def foo
            puts'foooooooooooooo'
        end
    end
end

# Test.start
# Test.foo

# メソッドを実行
Main.start
