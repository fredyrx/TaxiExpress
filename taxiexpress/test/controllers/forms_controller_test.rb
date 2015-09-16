require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  test "should get form_pasajero" do
    get :form_pasajero
    assert_response :success
  end

end
