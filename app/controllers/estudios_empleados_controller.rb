class EstudiosEmpleadosController < ApplicationController
  before_action :set_estudios_empleado, only: [:show, :edit, :update, :destroy]

  # GET /estudios_empleados
  # GET /estudios_empleados.json
  def index
    @estudios_empleados = EstudiosEmpleado.all
  end

  # GET /estudios_empleados/1
  # GET /estudios_empleados/1.json
  def show
  end

  # GET /estudios_empleados/new
  def new
    @estudios_empleado = EstudiosEmpleado.new
  end

  # GET /estudios_empleados/1/edit
  def edit
  end

  # POST /estudios_empleados
  # POST /estudios_empleados.json
  def create
    @estudios_empleado = EstudiosEmpleado.new(estudios_empleado_params)

    respond_to do |format|
      if @estudios_empleado.save
        format.html { redirect_to @estudios_empleado, notice: 'Estudios empleado was successfully created.' }
        format.json { render :show, status: :created, location: @estudios_empleado }
      else
        format.html { render :new }
        format.json { render json: @estudios_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudios_empleados/1
  # PATCH/PUT /estudios_empleados/1.json
  def update
    respond_to do |format|
      if @estudios_empleado.update(estudios_empleado_params)
        format.html { redirect_to @estudios_empleado, notice: 'Estudios empleado was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudios_empleado }
      else
        format.html { render :edit }
        format.json { render json: @estudios_empleado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudios_empleados/1
  # DELETE /estudios_empleados/1.json
  def destroy
    @estudios_empleado.destroy
    respond_to do |format|
      format.html { redirect_to estudios_empleados_url, notice: 'Estudios empleado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudios_empleado
      @estudios_empleado = EstudiosEmpleado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estudios_empleado_params
      params.require(:estudios_empleado).permit(:empleados, :estudios)
    end
end
