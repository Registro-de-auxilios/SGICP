require 'test_helper'

class EstudiosEmpleadosControllerTest < ActionController::TestCase
  setup do
    @estudios_empleado = estudios_empleados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudios_empleados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudios_empleado" do
    assert_difference('EstudiosEmpleado.count') do
      post :create, estudios_empleado: { empleados: @estudios_empleado.empleados, estudios: @estudios_empleado.estudios }
    end

    assert_redirected_to estudios_empleado_path(assigns(:estudios_empleado))
  end

  test "should show estudios_empleado" do
    get :show, id: @estudios_empleado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudios_empleado
    assert_response :success
  end

  test "should update estudios_empleado" do
    patch :update, id: @estudios_empleado, estudios_empleado: { empleados: @estudios_empleado.empleados, estudios: @estudios_empleado.estudios }
    assert_redirected_to estudios_empleado_path(assigns(:estudios_empleado))
  end

  test "should destroy estudios_empleado" do
    assert_difference('EstudiosEmpleado.count', -1) do
      delete :destroy, id: @estudios_empleado
    end

    assert_redirected_to estudios_empleados_path
  end
end
