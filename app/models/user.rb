class User < ApplicationRecord
  has_secure_password
  belongs_to :guest
  belongs_to :episode
end
