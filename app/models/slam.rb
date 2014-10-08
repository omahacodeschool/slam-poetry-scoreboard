class Slam < ActiveRecord::Base
  belongs_to :master
  has_many :rounds
  attr_accessible :description, :event_date, :master_id, :name

end
