class Character
    attr_accessor :hp, :mp, :power
    
    def initialize(hp, mp, power)
        @hp = hp
        @mp = mp
        @power = power    
    end

    def name
        ''
    end

    def attack(character)

        if character.hp <= 0
            puts 'ただの しかばね のようだ。'
        else
            character.hp -= @power
            puts "#{self.name}が#{character.name}を攻撃して#{@power}ポイントのダメージを与えた！"
        
            if character.hp <= 0 
                self.defeat(character)
            end
        end

        def defeat(character)
            puts "#{self.name}は#{character.name}を倒した！"
        end
    end
end

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
        puts "#{@type}は分裂した！"
    end

    def fusion (slime)
        @hp += slime.hp        
        @mp += slime.mp
        puts "#{@type}は合体した！"
    end

    def beFusion
        @hp = 0
        @mp = 0
    end
end

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
        puts "#{@type}はちからをためている！"
    end
end

hero = Hero.new
slime_A = Slime.new('A')
slime_B = Slime.new('B')

slime_A.attack(hero)
slime_A.division
slime_A.fusion(slime_B)
slime_B.beFusion

hero.attack(slime_A)
hero.attack(slime_B)

hero.charge

hero.attack(slime_A)

p slime_A
p slime_B