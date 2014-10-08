class Round < ActiveRecord::Base
  belongs_to :slam
  has_many :performances
  attr_accessible :round_number, :slam_id, :performances_attributes, :poet
  
  accepts_nested_attributes_for :performances, :allow_destroy => true# , :reject_if => proc { |obj| obj.blank? }
  
  def assign_poets(poet_ids)
    poet_ids.each do |p|
      self.performances.create(poet_id: p) 
    end
  end
end
