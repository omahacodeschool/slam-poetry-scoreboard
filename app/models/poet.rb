class Poet < ActiveRecord::Base
  belongs_to :performance
  attr_accessible :name, :photo
end
