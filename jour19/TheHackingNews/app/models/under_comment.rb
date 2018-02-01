class UnderComment < ApplicationRecord
	belongs_to :comment
	validates :commenter, presence: true
	validates :body, presence: true, length: { maximum: 500 }
end
