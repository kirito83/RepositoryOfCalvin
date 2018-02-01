class Link < ApplicationRecord
	has_many :comments
	validates :url, presence: true
end
