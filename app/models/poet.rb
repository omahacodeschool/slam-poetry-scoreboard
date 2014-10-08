class Poet < ActiveRecord::Base
  has_one :performance
  attr_accessible :name, :photo, :performance_id
  mount_uploader :photo, PhotoUploader
end
