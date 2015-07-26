class PhotoSession < ActiveRecord::Base
  has_many :photos
  has_many :participants

end
