class PassengerController < ApplicationController
  def dashboard
    
  end
  def login
    @Pasajero='Pasajero_prueba'
  end
  
  def pend_services
  @servicios = [ ]
  end

  def last_services
    @servicios = [ ]
  end


  def me
    @me = {nombre=>"fredy"}
  end
end
