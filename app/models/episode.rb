class Episode < ApplicationRecord
  has_many :guests
  has_many :users, through: :guests
end
