class User < ActiveRecord::Base
  has_many :logs

  before_create -> { self.auth_token = SecureRandom.hex }
end
