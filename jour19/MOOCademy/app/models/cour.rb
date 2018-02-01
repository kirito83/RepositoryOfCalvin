class Cour < ApplicationRecord
	has_many :lessons
	validates :title, presence :true
end
