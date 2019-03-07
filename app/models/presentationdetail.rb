class Presentationdetail < ApplicationRecord
	validates :tname, :tdescription, :fostudy, :dtpresent, :prname, :prdetails, :price, presence: true
	validates :tname, uniqueness: true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	belongs_to :user
end
