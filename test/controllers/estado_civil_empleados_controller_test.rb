require 'test_helper'

class EstadoCivilEmpleadosControllerTest < ActionController::TestCase
  setup do
    @estado_civil_empleado = estado_civil_empleados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estado_civil_empleados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estado_civil_empleado" do
    assert_difference('EstadoCivilEmpleado.count') do
      post :create, estado_civil_empleado: { empleados_id: @estado_civil_empleado.empleados_id, estado_civils_id: @estado_civil_empleado.estado_civils_id }
    end

    assert_redirected_to estado_civil_empleado_path(assigns(:estado_civil_empleado))
  end

  test "should show estado_civil_empleado" do
    get :show, id: @estado_civil_empleado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estado_civil_empleado
    assert_response :success
  end

  test "should update estado_civil_empleado" do
    patch :update, id: @estado_civil_empleado, estado_civil_empleado: { empleados_id: @estado_civil_empleado.empleados_id, estado_civils_id: @estado_civil_empleado.estado_civils_id }
    assert_redirected_to estado_civil_empleado_path(assigns(:estado_civil_empleado))
  end

  test "should destroy estado_civil_empleado" do
    assert_difference('EstadoCivilEmpleado.count', -1) do
      delete :destroy, id: @estado_civil_empleado
    end

    assert_redirected_to estado_civil_empleados_path
  end
end
