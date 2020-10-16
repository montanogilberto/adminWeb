class Customer < ApplicationRecord
	belongs_to :user
	belongs_to :customer_type
	has_many :customer_blogs
	validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
