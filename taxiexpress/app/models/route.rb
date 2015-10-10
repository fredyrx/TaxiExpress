class Route < ActiveRecord::Base
    belongs_to :address_origin, :class_name => "Address"
    belongs_to :address_destiny, :class_name => "Address"
    
    
    public 
    def description

  	    return  self.address_origin.name << " - " << self.address_destiny.name << ": S/. " << self.price.to_s 
    end
    def description_2

  	    return  self.address_origin.name << " - " << self.address_destiny.name
    end
end


