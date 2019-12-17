require "spec_helper"

RSpec.describe Team do
  let(:players) do
    {
      'Count Chocula': 'Pitcher',
      'Trix the Rabbit': 'Catcher',
      'Capn Crunch': '1st Base'
    }
  end

  let(:team) { Team.new('Cereal Superstars', players) }

  it 'has a name' do
    expect(team.name).to eq('Cereal Superstars')
  end

  it 'has a list of players' do
    expect(team.players.count).to eq(3)
  end

  it "calling #motto returns the team motto" do
    expect(team.motto).to eq("The Cereal Superstars are the best team ever!")
  end
end
