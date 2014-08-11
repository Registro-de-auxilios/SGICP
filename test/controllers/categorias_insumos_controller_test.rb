require 'test_helper'

class CategoriasInsumosControllerTest < ActionController::TestCase
  setup do
    @categorias_insumo = categorias_insumos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorias_insumos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create categorias_insumo" do
    assert_difference('CategoriasInsumo.count') do
      post :create, categorias_insumo: { categorias_id: @categorias_insumo.categorias_id, insumos_id: @categorias_insumo.insumos_id }
    end

    assert_redirected_to categorias_insumo_path(assigns(:categorias_insumo))
  end

  test "should show categorias_insumo" do
    get :show, id: @categorias_insumo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @categorias_insumo
    assert_response :success
  end

  test "should update categorias_insumo" do
    patch :update, id: @categorias_insumo, categorias_insumo: { categorias_id: @categorias_insumo.categorias_id, insumos_id: @categorias_insumo.insumos_id }
    assert_redirected_to categorias_insumo_path(assigns(:categorias_insumo))
  end

  test "should destroy categorias_insumo" do
    assert_difference('CategoriasInsumo.count', -1) do
      delete :destroy, id: @categorias_insumo
    end

    assert_redirected_to categorias_insumos_path
  end
end
