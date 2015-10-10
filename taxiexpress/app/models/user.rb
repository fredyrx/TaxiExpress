class User < ActiveRecord::Base
  has_many :user_driver_user, :foreign_key => "user_driver_id", :class_name => "Service"
  has_many :user_customer_user, :foreign_key => "user_customer_id", :class_name => "Service"
  
  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         
  public 
  def description_driver
    return self.name << " " << self.last_name << " - NP: " << self.num_passenger.to_s << " CT: " << self.car_type
  end
end
