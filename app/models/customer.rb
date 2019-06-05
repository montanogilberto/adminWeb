class Customer < ApplicationRecord
	belongs_to :user
	validates :adress, presence: true, length: {minimum: 20}
	validates :email, presence: true
	validates :celular, presence: true
end
