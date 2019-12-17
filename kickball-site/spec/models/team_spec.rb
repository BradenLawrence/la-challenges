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
    # your code here
  end

  it 'has a list of players' do
    # your code here
  end

  it "calling #motto returns the team motto" do
    # your code here
  end
end
