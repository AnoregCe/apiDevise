class ApiPedidosController < ApplicationController
    def getAll
        @pedidos = Pedido.all

        render json: @pedidos, status: 200
    end
    
    def savePedido

        @processador = Processador.find(params[:processador])
        @placaMae = PlacaMae.find(params[:placasMae])
        puts params
        puts params[:memorias]
    end
end
