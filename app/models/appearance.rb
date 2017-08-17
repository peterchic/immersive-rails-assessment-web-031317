class Appearance < ApplicationRecord
belongs_to :guest
belongs_to :episode
validates :value, :inclusion => {:in => [1..5]}
end
