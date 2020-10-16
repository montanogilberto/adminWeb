json.extract! customer_blog, :id, :action, :new, :older, :created_at, :updated_at, :customer_id, :field, :user_id
json.url act_url(customer_blog, format: :json)