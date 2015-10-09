class PassengerController < ApplicationController
  current_user_path = "/passengers/dashboard"
  def after_sign_in_path_for(resource_or_scope)
    current_user_path
  end

  def dashboard
    
  end
  def login
    @Pasajero='Pasajero_prueba'
  end
  
  def reserva
  @reserva = [ ]
  end

  def rutas
    @rutas = [ ]
  end


  def comentarios
    @me = []
  end
  
  def mapas
    @maps = []
    
  end
end
