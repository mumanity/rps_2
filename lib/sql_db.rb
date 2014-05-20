class RPS::DB
  attr_reader :users, :games, :rounds

  def initialize
    @users = {}
    @games = {}
    @rounds = {}
    @user_count = 0
    @game_count = 0
    @round_count = 0
  end

# USER
  def create_user(data)
    @user_count += 1
    data[:id] = @user_count
    @users[data[:id]] = data
    build_user(@users[data[:id]])
  end

  def get_user(id)
    user = @users[id]
    build_user(user)
  end

  def update_user(id, data)
    @users[id].merge!(data)
  end

  def build_user(data)
    RPS::Users.new(data)
  end

# GAMES
  def create_game(data)
    @game_count += 1
    data[:id] = @game_count
    @games[data[:id]] = data
    build_game(@games[data[:id]])
  end

  def get_game(id)
    game = @games[id]
    build_game(game)
  end

  def update_game(id, data)
    @games[id].merge!(data)
  end

  def build_game(data)
    RPS::Games.new(data)
  end

  def play_game
# starts game
  end

# ROUND
  def create_round(data)
    @round_count += 1
    data[:id] = @round_count
    @rounds[data[:id]] = data
    build_round(@rounds[data[:id]])
  end

  def get_round
    round = @rounds[id]
    build_project(round)
  end

  def update_round(id, data)
    @rounds[id].merge!(data)
  end

  def build_round(data)
    RPS::Round.new(data)
  end

end




 # def initialize
 #    @db = SQLite3::Database.new "test.db"

 #    db.execute <<-SQL

 #      CREATE TABLE IF NOT EXISTS text_tweets (
 #        id integer PRIMARY KEY AUTOINCREMENT,
 #        user string,
 #        password string,
 #        );
 #    SQL
