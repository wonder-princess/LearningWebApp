class Animal
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age   
    end

    def say
        puts "#{self.name}です。#{@age}歳です。"
    end
end