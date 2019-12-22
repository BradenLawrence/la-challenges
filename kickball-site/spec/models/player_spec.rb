require "spec_helper"

RSpec.describe Player do
  let(:player_name) { 'Count Chocula' }
  let(:position) { 'Pitcher' }
  let(:player) { Player.new(player_name, position) }

  it 'has a name' do
    expect(player.name).to eq('Count Chocula')
  end

  it 'has a position' do
    expect(player.position).to eq('Pitcher')
  end
end
