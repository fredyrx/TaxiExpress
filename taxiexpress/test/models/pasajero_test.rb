require 'test_helper'

class PasajeroTest < ActiveSupport::TestCase
  # test "the truth" do
  def setup
    @pasajero = Pasajero.new(nombre_pasajero: "Pasajero de ejemplo", correo: "paRss@ejemplo.com")
    
  end
   #   assert true
  test "debe ser válido" do
    assert @pasajero.valid?
  end
  #testeando la presencia del nombre
  test "nombre debe estar presente" do
    @pasajero.nombre_pasajero= "        "
    assert_not @pasajero.valid?
    
  end
  
  test "email debe estar también presente" do
    @pasajero.correo=""
    assert_not @pasajero.valid?
  end  
  #testeando que sea único
  test "el correo debe ser único" do
    pasajero_doble = @pasajero.dup
     #testeando también que sea case insensitive para validar la unicidad del email
    pasajero_doble.correo = @pasajero.correo.upcase
    @pasajero.save
    assert_not pasajero_doble.valid?
  end
  #testeando también que sea case insensitive para validar la unicidad del email
  
 
  # end
end
