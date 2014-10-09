class Poet < ActiveRecord::Base
  has_many :performance
  attr_accessible :name, :photo, :performance_id, :remote_photo_url
  mount_uploader :photo, PhotoUploader
end
