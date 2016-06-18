class PhotoSession < ActiveRecord::Base
  has_many :photos
  has_many :participant
end
