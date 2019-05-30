json.extract! customer, :id, :name, :adress, :adress2, :email, :celular, :user_id, :created_at, :updated_at
json.url customer_url(customer, format: :json)
