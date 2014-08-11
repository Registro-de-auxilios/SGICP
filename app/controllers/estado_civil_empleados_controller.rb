class EstadoCivilEmpleadosController < ApplicationController
  before_action :set_estado_civil_empleado, only: [:show, :edit, :update, :destroy]

  # GET /estado_civil_empleados
  # GET /estado_civil_empleados.json
  def index
    @estado_civil_empleados = EstadoCivilEmpleado.all
  end

  # GET /estado_civil_empleados/1
  # GET /estado_civil_empleados/1.json
  def show
  end

  # GET /estado_civil_empleados/new
  def new
    @estado_civil_empleado = EstadoCivilEmpleado.new
  end

  # GET /estado_civil_empleados/1/edit
  def edit
  end

  # POST /estado_civil_empleados
  # POST /estado_civil_empleados.json
  def create
    @estado_civil_empleado = EstadoCivilEmpleado.new(estado_civil_empleado_params)

    respond_to do |format|
      if @estado_civil_empleado.save
        format.html { redirect_to @estado_civil_empleado, notice: 'Estado civil empleado was successfully created.' }
        format.json { render :show, status: :created, location: @estado_civil_empleado }
      else
        format.html { render :new }
        format.json { render json: @estado_civil_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estado_civil_empleados/1
  # PATCH/PUT /estado_civil_empleados/1.json
  def update
    respond_to do |format|
      if @estado_civil_empleado.update(estado_civil_empleado_params)
        format.html { redirect_to @estado_civil_empleado, notice: 'Estado civil empleado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estado_civil_empleado }
      else
        format.html { render :edit }
        format.json { render json: @estado_civil_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_civil_empleados/1
  # DELETE /estado_civil_empleados/1.json
  def destroy
    @estado_civil_empleado.destroy
    respond_to do |format|
      format.html { redirect_to estado_civil_empleados_url, notice: 'Estado civil empleado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado_civil_empleado
      @estado_civil_empleado = EstadoCivilEmpleado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estado_civil_empleado_params
      params.require(:estado_civil_empleado).permit(:empleados_id, :estado_civils_id)
    end
end
