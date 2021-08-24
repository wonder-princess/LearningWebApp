num_max = 100

def fizzbuzz(num)
    if (num % 3 == 0) && (num % 5 == 0)
        'アホ犬'
    elsif num % 3 == 0 
        'アホ'
    elsif num % 5 == 0
        '犬'
    else
        num.to_s
    end
end

for num in 1..num_max do
    puts fizzbuzz(num)
end