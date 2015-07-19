class PhotoSession < ActiveRecord::Base
  has_many :photos, :participants

end
