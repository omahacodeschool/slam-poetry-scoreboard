class Round < ActiveRecord::Base
  belongs_to :slam
  has_many :performances
  attr_accessible :round_number, :slam_id
  accepts_nested_attributes_for :performances, :allow_destroy => true# , :reject_if => proc { |obj| obj.blank? }
  
end
