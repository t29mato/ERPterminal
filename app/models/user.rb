class User < ApplicationRecord

  validates :mail_address, presence: true
  validates :password, { presence: true, length: {minimum: 6, maximum: 12} }
  validates :nickname, presence: true

end
