class Slam < ActiveRecord::Base
  belongs_to :master
  has_many :rounds
  attr_accessible :description, :event_date, :master_id, :name
  
  def top_poets
    performances = self.rounds.last.performances
    top_poets = {}
    performances.each do |p|
      top_poets[p.poet.name] = p.normalized_score
    end
    top_poets
  end
end
