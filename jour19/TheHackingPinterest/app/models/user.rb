class User < ApplicationRecord
	before_save { self.email = email.downcase }
	has_many :pins
	validates :pseudo, presence: true, uniqueness: { case_sensitive: false },
				length: { in: 4...12 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
				format: { with: VALID_EMAIL_REGEX }
	validates :password, presence: true, confirmation: true,
				length: { in: 6...16 }
	has_secure_password
end
