json.extract! customer, 
:id, 
:name, 
:name2, 
:lastname, 
:lastname2, 
:email, 
:cellular, 
:customer_type_id, 
:user_id, 
:created_at, 
:updated_at,
:custmer_blog_id
json.url customer_url(customer, format: :json)
