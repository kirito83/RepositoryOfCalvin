class Comment < ApplicationRecord
	belongs_to :link
	has_many :under_comments
	validates :body, presence: true, length: { maximum: 500 }
end
