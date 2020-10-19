json.partial! "customers/customer", customer: @customer
#json.array! @customer_blogs, partial: "customer_blogs/customer_blog", as: :customer_blog

