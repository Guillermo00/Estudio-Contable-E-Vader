class WelcomeController < ApplicationController
  def index
  	@totalcli = Cliente.count
  	@totalper = Persona.count
  	@totalfac = Factura.count
  	@facturacion = Factura.sum("monto")
  end
end
