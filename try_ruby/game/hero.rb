require './character'

class Hero < Character
    @@type = '吉幾三'
    
    def initialize
      super(100, 4, 5)
    end

    def name
        # インスタンス変数ではなく、クラス変数を呼び出している
        @@type
    end

    def charge
        @mp -= 2
        @power = @power*3
        puts "#{@@type}はちからをためている！"
    end
end
