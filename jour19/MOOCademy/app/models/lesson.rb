class Lesson < ApplicationRecord
	belongs_to :cour
	validates :title, presence: true, uniqueness: { case_sensitive: false }
	validates :body, presence: true
end
