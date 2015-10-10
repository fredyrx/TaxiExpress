class Service < ActiveRecord::Base
  belongs_to :user_driver, :class_name => "User"
  belongs_to :user_customer, :class_name => "User"
  belongs_to :route
  
  
  public 
    def full_name_customer

  	    return  self.user_customer.name  << " " << self.user_customer.last_name
    end
    
    def full_name_drive

  	    return  self.user_driver.name  << " " << self.user_driver.last_name
    end
    
    def pay_method_description
      if self.pay_method == 0
        descripcion = "Contado" 
      else 
        descripcion = "Tarjeta"
      end
        
      return descripcion
    end
      
  
end
