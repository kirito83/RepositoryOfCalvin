class Lesson < ApplicationRecord
	belongs_to :cour
	validates :title, presence: true
end
