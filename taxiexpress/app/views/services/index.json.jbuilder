json.array!(@services) do |service|
  json.extract! service, :id, :num_passenger, :car_type, :pay_method, :state, :feedback, :route_id, :user_customer_id, :user_driver_id
  json.url service_url(service, format: :json)
end
