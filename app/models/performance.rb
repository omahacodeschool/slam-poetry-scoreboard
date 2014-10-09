class Performance < ActiveRecord::Base
  belongs_to :poet
  belongs_to :round 
  attr_accessible :poet_id, :round_id, :score1, :score2, :score3, :score4, :score5
  
  def normalized_score
    score_array = [self.score1, self.score2, self.score3, self.score4, self.score5]
    score_array.sort!
    normal = score_array[1] + score_array[2] + score_array[3]
    normal
  end
end
