$name = ''

def sign
    puts "そこに名前を書きな働かせてやる。"
    $name = gets.chomp
    puts $name + 'というのかい。ぜいたくな名だね。' 
end

def changeName(str)
    called = str.slice(rand(str.size))
    puts '今からおまえの名前は' + called + 'だ。いいかい、'+ called + 'だよ。分かったら返事をするんだ、' + called + '！！'
end

sign()
changeName($name)

__END__

#********** for **********#
arr = (1..5).to_a

i_1 = 0
arr.size.times do
#    puts arr[i_1]
    i_1 += 1
end

i_2 = 0
while i_2 < 5
#    puts (arr[i_2] * 10)
    i_2 += 1
end

arr.each do | num |
    puts (num * 0.1)
end

#*************************#


#********** if **********#
str = ''

if str == 'ここで働かせてください'
    puts '黙れ'
elsif str == '黒柳徹子'
    puts 'https://www.nicovideo.jp/watch/sm19403030'
else 
    puts '子豚にしてやろう'
end
#************************#


#********** シンボルの仕組 **********#
puts "Tarou".object_id
puts "Tarou".object_id
puts :Tarou.object_id
puts :Tarou.object_id
#***********************************#


#********** 配列 **********#
arr = []
arr = (1..5).to_a

for i in 1..3 do
    arr << i*10
end
puts arr

gibleTitle = { 
    1986 => '天空の城ラピュタ',
    1988 => 'となりのトトロ',
#    1988 => '火垂るの墓',
    1989 => '魔女の宅急便',
    1991 => 'おもひでぽろぽろ',
    1992 => '紅の豚',
    1994 => '平成狸合戦ぽんぽこ',
    1995 => '耳をすませば',
    1997 => 'もののけ姫',
    1999 => 'ホーホケキョ となりの山田くん',
    2001 => '千と千尋の神隠し',
    2002 => '猫の恩返し',
    2004 => 'ハウルの動く城',
    2006 => 'ゲド戦記',
    2008 => '崖の上のポニョ',
    2010 => '借りぐらしのアリエッティ',
    2011 => 'コクリコ坂から',
    2013 => '風立ちぬ',
#    2013 => 'かぐや姫の物語',
    2014 => '思い出のマーニー',
    2016 => 'レッドタートル ある島の物語',
    2021 => 'アーヤと魔女'
}

PorcoRosso = { 
    character1: 'マルゴ・パゴット',
    character2: 'ジーナ',
    character3: 'フィオ・ピッコロ',
    character4: 'ドナルド・カーチス',
    character5: 'フェラーリン',
    character6: 'ピッコロのおやじ'
}

gibleTitle.each do |key, value|
    p key
    p value
end

#******************************#


#********** 代入 **********#
hourPerDay = 24
minutePerHour = 60
secondPerminute = 60
secondPerDay = hourPerDay * minutePerHour * secondPerminute
# puts secondPerDay
secondPerDay = 1

timer = [hourPerDay, minutePerHour, secondPerminute]
puts timer[0]
timer.each do |val|
    secondPerDay *= val
end
puts secondPerDay

#**************************#


#********** 出力 **********#  
class Hello
    def hello
      # 出力
      puts 'HELLO world'
    end
  end
  
  aisatu = Hello.new
  # aisatu.hello
  #******************************#
  