class Slam < ActiveRecord::Base
  belongs_to :master
  has_many :rounds
  attr_accessible :description, :event_date, :master_id, :name, :slam_complete
  
  def top_poets
    performances = self.rounds.last.performances
    top_poets = {}
    performances.each do |p|
      top_poets[p.poet.name] = p.normalized_score
    end
    top_poets
  end
  
  # Method to make new round with previous round id incremented by one
  def new_round(prev_round)
    self.rounds.create(round_number: prev_round.round_number.to_i + 1)
  end
end
