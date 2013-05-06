class Rank
  @scores = {}

  def self.add(player)
    @scores[player.name] = player.score
  end

  def self.remove(player)
    @scores.delete(player.name)
  end

  def self.scores
    Hash[@scores.sort_by {|key, score| -score}]
  end
end

class Player
  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end
end
