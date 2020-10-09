class Customer < ApplicationRecord
	belongs_to :user
	belongs_to :customer_type
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
