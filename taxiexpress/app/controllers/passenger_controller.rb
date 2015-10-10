class PassengerController < ApplicationController
  def dashboard
     
  end
  
  def show
    @pasajero = Pasajero.find(params[:id])
  end
  def login
    @Pasajero='Pasajero_prueba'
  end
  
  def new
    @pasajero = Pasajero.new
    
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
