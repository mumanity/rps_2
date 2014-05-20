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
    RPS::Users.new((data[:id], data[:password])
  end

  def get_user(id)
    user = @users[id]
    build_user(user)
  end

  def update_user(id, data)
    @users[id].merge!(data)
  end

  def build_user(data)
    Users.new(data[:id], data[:password])
  end

# GAMES
  def create_game
  # #data = { name: "this" }
  #   @project_count += 1
  #   data[:id] = @project_count
  #   data[:completed] = false
  #   #data = { name: "this", :id => 0, :competed => false }
  #   @projects[data[:id]] = data
  #   RPS::Users.new((data[:id], data[:name], data[:completed])
  end

  def get_game(id)
    # project = @projects[id]
    # build_project(project)
  end

  def update_game(id, data)
    # @projects[id].merge!(data)
  end

  def build_game(data)
    # Project.new(data[:id], data[:name], data[:completed])
  end

  def play_game
# starts game
  end

# ROUND
  def create_round(data)
  # #data = { name: "this" }
  #   @project_count += 1
  #   data[:id] = @project_count
  #   data[:completed] = false
  #   #data = { name: "this", :id => 0, :competed => false }
  #   @projects[data[:id]] = data
  #   RPS::Users.new((data[:id], data[:name], data[:completed])
  end

  def get_round
    # project = @projects[id]
    # build_project(project)
  end

  def update_round(id, data)
    # @projects[id].merge!(data)
  end

  def build_round(data)
    # Project.new(data[:id], data[:name], data[:completed])
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
