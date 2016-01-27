class MediosController < ApplicationController

 def create
    @cliente = Cliente.find(params[:cliente_id])
    @medio = @cliente.medios.create(medio_params)
    redirect_to cliente_path(@cliente)
  end
 

  
  def destroy
    @cliente = Cliente.find(params[:cliente_id])
    @medio = @cliente.medios.find(params[:id])
    @medio.destroy
    redirect_to cliente_path(@cliente)
   end

     private
  def medio_params
    params.require(:medio).permit(:nombre, :contacto)
  end
end
