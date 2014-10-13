require 'rails_helper'

RSpec.describe Slam, :type => :model do
  it '#new_round(prev_round)' do
    prev_round = Round.create(round_number: 1)
    slam = Slam.create
    new_round = slam.new_round(prev_round)
    expect(new_round.round_number).to eq(2) 
  end
end
