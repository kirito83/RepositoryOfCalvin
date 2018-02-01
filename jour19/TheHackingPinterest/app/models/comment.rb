class Comment < ApplicationRecord
	belongs_to :pin
	validates :commenter, presence: true
	validates :body, presence: true, length: { maximum: 500 }
end
