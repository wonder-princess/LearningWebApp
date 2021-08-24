FromUpOnPoppyHill = [
['小松崎', '海', 16],
['小松崎', '空', 15],
['小松崎', '陸', 13],
['風間', '俊', 17],
['水沼', '史郎', 17],
['広瀬', '真', 18]]

target = FromUpOnPoppyHill[rand(FromUpOnPoppyHill.size)]
name = target[0] + target[1]
called = name.slice(rand(name.size))

puts name + 'です。 ' + (target[2].to_s) + '歳です。'
puts 'フン。' + target[1] + 'というのかい？贅沢な名だぇ。'
puts '今からおまえの名前は' + called + 'だ。いいかい、'+ called + 'だよ。分かったら返事をするんだ、' + called + '！！'

