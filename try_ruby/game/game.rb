require './slime'
require './hero'

class Game
    def self.start
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

        slime_A.attack(hero)
        
        hero.attack(slime_A)
        
        p slime_A
        p slime_B
        p hero
    end
end

Game.start
