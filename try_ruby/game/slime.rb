require './character'

class Slime < Character
    @@type = 'スライム'
    attr_accessor :suffix
  
    def initialize(str)
        super(10, 2, 3)
        @suffix = str
    end

    def name
        @@type + @suffix    # return の省略
    end

    def division 
        @mp -= 1
        puts "#{@@type}は分裂した！"
    end

    def fusion (slime)
        @hp += slime.hp        
        @mp += slime.mp
        puts "#{@@type}は合体した！"
    end

    def beFusion
        @hp = 0
        @mp = 0
    end
end