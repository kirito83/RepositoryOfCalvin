class UnderComment < ApplicationRecord
	belongs_to :comment
	validates :body, presence: true, length: { maximum: 500 }
end
