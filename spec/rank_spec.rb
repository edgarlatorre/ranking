require File.join(File.dirname(__FILE__), '..', 'rank.rb')

describe Player do
  it "should have a name and a score" do
    player = Player.new(name='Edgar', score=10)

    expect(player.name).to eq('Edgar')
    expect(player.score).to eq(10)
  end
end


describe Rank do
  let(:player) {Player.new('Test', 10)}

  it "should have empty scores" do
    expect(Rank.scores).to eq({})
  end

  it "should add a score" do
    Rank.add(player)
    expect(Rank.scores).to eq({player.name => player.score})
  end

  it "should remove a score" do
    Rank.add(player)
    Rank.remove(player)

    expect(Rank.scores).to eq({})
  end
end
