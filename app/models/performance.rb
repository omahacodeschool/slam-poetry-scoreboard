class Performance < ActiveRecord::Base
  belongs_to :poet
  belongs_to :round 
  attr_accessible :poet_id, :round_id, :score1, :score2, :score3, :score4, :score5
end
