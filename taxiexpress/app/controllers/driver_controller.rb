class DriverController < ApplicationController
  
  def dashboard
    @usuario='User_prueba'
  end
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