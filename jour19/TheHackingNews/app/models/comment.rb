class Comment < ApplicationRecord
	belongs_to :link
	validates :commenter, presence: true
	validates :body, presence: true, length: { maximum: 500 }
end
