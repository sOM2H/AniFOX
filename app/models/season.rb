class Season < ApplicationRecord
  belongs_to :anime
  has_many :episodes
end
