module AttackMethods
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