class FacturasController < ApplicationController
  before_action :set_factura, only: [:show, :edit, :update, :destroy]

  # GET /facturas
  # GET /facturas.json
  def index
    @facturas = Factura.all
    @personas = Persona.all
  end

  # GET /facturas/1
  # GET /facturas/1.json
  def show
    @persona= Persona.new
  end

  # GET /facturas/new
  def new
    @factura = Factura.new
    @factura.cliente = @cliente
    @factura.persona = @persona
  end

  # GET /facturas/1/edit
  def edit
  end

  # POST /facturas
  # POST /facturas.json
  def create
    @cliente = Cliente.find(params[:cliente_id])
   # @persona = Persona.find(params[:persona_id])
    @factura = Factura.new(factura_params)
    @factura.cliente= @cliente
   
    
      respond_to do |format|
      if @factura.save
        format.html { redirect_to cliente_path(@cliente), notice: 'La factura fue creada exitosamente.' }
        format.json { render :show, status: :created, location: @factura }
      else
        format.html { render :new }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facturas/1
  # PATCH/PUT /facturas/1.json
  def update
    @cli= @factura.cliente

    respond_to do |format|
      if @factura.update(factura_params)
        format.html { redirect_to cliente_path(@cli), notice: 'La factura fue actualizada exitosamente.' }
        format.json { render :show, status: :ok, location: @factura }
      else
        format.html { render :edit }
        format.json { render json: @factura.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facturas/1
  # DELETE /facturas/1.json
  def destroy
    @cli= @factura.cliente
    @factura.destroy
    respond_to do |format|
      format.html { redirect_to @cli, notice: 'La factura fue eliminada exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura
      @factura = Factura.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_params
      params.require(:factura).permit(:monto, :emision, :descripcion, :persona_id)
    end
end
