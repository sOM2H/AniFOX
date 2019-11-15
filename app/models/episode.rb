class Episode < ApplicationRecord
  belongs_to :anime
  belongs_to :season
end
