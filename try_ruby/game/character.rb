require './attack_methods'

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
    include AttackMethods
end