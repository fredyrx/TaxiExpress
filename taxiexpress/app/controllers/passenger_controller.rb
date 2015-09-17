class PassengerController < ApplicationController
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
