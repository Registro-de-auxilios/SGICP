class CategoriasInsumosController < ApplicationController
  before_action :set_categorias_insumo, only: [:show, :edit, :update, :destroy]

  # GET /categorias_insumos
  # GET /categorias_insumos.json
  def index
    @categorias_insumos = CategoriasInsumo.all
  end

  # GET /categorias_insumos/1
  # GET /categorias_insumos/1.json
  def show
  end

  # GET /categorias_insumos/new
  def new
    @categorias_insumo = CategoriasInsumo.new
  end

  # GET /categorias_insumos/1/edit
  def edit
  end

  # POST /categorias_insumos
  # POST /categorias_insumos.json
  def create
    @categorias_insumo = CategoriasInsumo.new(categorias_insumo_params)

    respond_to do |format|
      if @categorias_insumo.save
        format.html { redirect_to @categorias_insumo, notice: 'Categorias insumo was successfully created.' }
        format.json { render :show, status: :created, location: @categorias_insumo }
      else
        format.html { render :new }
        format.json { render json: @categorias_insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categorias_insumos/1
  # PATCH/PUT /categorias_insumos/1.json
  def update
    respond_to do |format|
      if @categorias_insumo.update(categorias_insumo_params)
        format.html { redirect_to @categorias_insumo, notice: 'Categorias insumo was successfully updated.' }
        format.json { render :show, status: :ok, location: @categorias_insumo }
      else
        format.html { render :edit }
        format.json { render json: @categorias_insumo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorias_insumos/1
  # DELETE /categorias_insumos/1.json
  def destroy
    @categorias_insumo.destroy
    respond_to do |format|
      format.html { redirect_to categorias_insumos_url, notice: 'Categorias insumo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categorias_insumo
      @categorias_insumo = CategoriasInsumo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def categorias_insumo_params
      params.require(:categorias_insumo).permit(:insumos_id, :categorias_id)
    end
end
