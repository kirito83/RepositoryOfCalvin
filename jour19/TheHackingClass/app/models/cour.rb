class Cour < ApplicationRecord
	has_many :students
	validates :title, presence: true, length: { maximum: 50 }
end
