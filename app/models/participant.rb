class Participant < ActiveRecord::Base
    belongs_to :photo_session

    validates :name, presence: true,
                   length: {in: 1..70,}

    validates :email, uniqueness: true, length: {in: 1..70,}
end
