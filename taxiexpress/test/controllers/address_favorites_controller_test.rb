require 'test_helper'

class AddressFavoritesControllerTest < ActionController::TestCase
  setup do
    @address_favorite = address_favorites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_favorites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_favorite" do
    assert_difference('AddressFavorite.count') do
      post :create, address_favorite: { address_id: @address_favorite.address_id, name: @address_favorite.name, user_id: @address_favorite.user_id }
    end

    assert_redirected_to address_favorite_path(assigns(:address_favorite))
  end

  test "should show address_favorite" do
    get :show, id: @address_favorite
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address_favorite
    assert_response :success
  end

  test "should update address_favorite" do
    patch :update, id: @address_favorite, address_favorite: { address_id: @address_favorite.address_id, name: @address_favorite.name, user_id: @address_favorite.user_id }
    assert_redirected_to address_favorite_path(assigns(:address_favorite))
  end

  test "should destroy address_favorite" do
    assert_difference('AddressFavorite.count', -1) do
      delete :destroy, id: @address_favorite
    end

    assert_redirected_to address_favorites_path
  end
end
