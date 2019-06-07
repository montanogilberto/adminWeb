class Customer < ApplicationRecord
	belongs_to :user
	belongs_to :customer_type
	validates :adress, presence: true, length: {minimum: 20}
	validates :email, presence: true
	validates :celular, presence: true
end
