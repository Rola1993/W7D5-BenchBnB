class User < ApplicationRecord
  attr_reader :password
  validates :username, password_digest, session_token, presence:true
  validates :password, length: {minimum: 6, allow_nil:true}
  after_initialize :ensure_session_token
end
