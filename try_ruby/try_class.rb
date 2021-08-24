
class Slime

    # オブジェクトの変数（値）
    attr_accessor :type, :name, :hp, :mp, :power, :suffix
  
    # インスタンスを初期化するための、特別なメソッド
    def initialize(str)
        @type = 'スライム'
        @hp = 10
        @mp = 2
        @power = 3
        @suffix = str
    end

    def name
        @type = @type + @suffix    # return の省略
    end
  
    # オブジェクトのメソッド（処理）
    def attack(character_name)
        puts "#{self.name}が#{character_name}を攻撃して#{@power}ポイントのダメージを与えた！"
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

def attack (target)
    target.hp -= 6
    puts "たけしは#{target.type}を攻撃した！"
end

siime_A = Slime.new('A')
siime_B = Slime.new('B')

siime_A.attack('たけし')
siime_A.division
siime_A.fusion(siime_B)
siime_B.beFusion

attack(siime_A)



p siime_A
p siime_B