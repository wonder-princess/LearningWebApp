
class Team

    # インスタンスを初期化するための、特別なメソッド
    def initialize(name)
        @name = name
        @win = 0
        @lose = 0
        @draw = 0
    end

    def calc_win_rate
        @win.to_f / (@win.to_f + @lose.to_f)
    end

    def show_team_result
        puts "#{@name}の2020年の成績は #{@win}勝 #{@lose}敗 #{@draw}分 #{self.calc_win_rate}です"
    end
  
    def set_win_rate(win, lose, draw)
        @win = win
        @lose = lose
        @draw = draw
    end

end

giants = Team.new('Giants')
tigers = Team.new('Tigers')
dragons = Team.new('Dragons')
bayStars = Team.new('BayStars')
carp = Team.new('Carp')
swallows = Team.new('Swallows')

giants.set_win_rate(67, 45, 8)
tigers.set_win_rate(60, 53, 7)
dragons.set_win_rate(60, 55, 5)
bayStars.set_win_rate(56, 58, 6)
carp.set_win_rate(52, 56, 12)
swallows.set_win_rate(41, 69, 10)

teams = [giants, tigers, dragons, bayStars, carp, swallows]

def show_league_result(teams)
    for team in teams do
        team.show_team_result
    end
end

show_league_result(teams)


__END__


## 勝率順でソートする場合どうすれば？？
## JSの連想配列がないから紐づけが面倒

teamsAlt = [bayStars, carp, dragons, giants, swallows, tigers]

def sort_rate(teams)
    sortedTeams = []
    rateArr = []
    i = 0
    for team in teams do
        rateArr.push(team.calc_win_rate)
    end
    rateArr = rateArr.sort.reverse
end

sort_rate(teamsAlt)

