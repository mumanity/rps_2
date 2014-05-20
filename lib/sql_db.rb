class RPS::DB

# USER
  def create_user(data)
  # #attrs = { name: "this" }
  #   @project_count += 1
  #   attrs[:id] = @project_count
  #   attrs[:completed] = false
  #   #attrs = { name: "this", :id => 0, :competed => false }
  #   @projects[attrs[:id]] = attrs
  #   RPS::Users.new((data[:id], data[:name], data[:completed])
  end

  def get_user(id)
    # project = @projects[id]
    # build_project(project)  end

  def update_user(id, data)
    # @projects[id].merge!(data)
  end

  def build_user(data)
    # Project.new(data[:id], data[:name], data[:completed])
  end

# GAMES
  def create_game
  # #attrs = { name: "this" }
  #   @project_count += 1
  #   attrs[:id] = @project_count
  #   attrs[:completed] = false
  #   #attrs = { name: "this", :id => 0, :competed => false }
  #   @projects[attrs[:id]] = attrs
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
  # #attrs = { name: "this" }
  #   @project_count += 1
  #   attrs[:id] = @project_count
  #   attrs[:completed] = false
  #   #attrs = { name: "this", :id => 0, :competed => false }
  #   @projects[attrs[:id]] = attrs
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
