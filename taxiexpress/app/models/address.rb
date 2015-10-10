class Address < ActiveRecord::Base
  
  has_many :address_orgin_address, :foreign_key => "address_origin_id", :class_name => "Route"  
  has_many :address_destiny_address, :foreign_key => "address_destiny_id", :class_name => "Route"
  


end
