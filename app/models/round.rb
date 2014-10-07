class Round < ActiveRecord::Base
  belongs_to :slam
  has_many :performances
  attr_accessible :round_number, :slam_id
end
