class Artical < ApplicationRecord
	validates :title, presence: true
	validates :text, presence: true
end
