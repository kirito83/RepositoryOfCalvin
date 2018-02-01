class Cour < ApplicationRecord
	has_many :lessons
	validates :title, presence: true, uniqueness: { case_sensitive: false }
	validates :description, presence: true
end
