# README

Aclaraciones del desafìo

6. Según su diseño,explicar al cliente cómo implementar la lista de productos del catálogo.(de un ejemplo en código).Si un modelo necesita código,debes entregar lo al cliente como parte de la implementación.

En Application Record se agrega metodo products_available para obtener todos los productos que tengan stock. Puede aplicarse al controlador de home (y cambiar el diseño del hom#index) para así mostrar solo productos que tengan stock, ejemplo:

class HomeController < ApplicationController

  def index
    @products = Product.products_available
  end
end

7. Implementar o explicar las modificaciones (si las hay) al modelo OrderItem para que siga funcionando sin que afecte el resto del sistema.

Antecedentes: Se adicionaron las tablas SIZE, COLOR con atributo name. También se agrego la tabla VARIATION con los atributos price, stock y sku (que antes pertenecían a la tabla product) y se agrego como references product_id, size_id y color_id.

Para mantener la funcionalidad, lo que deberìa hacerse en OrderItem es agregar size, color, price, stock y sku, es decir todos los atributos que hacen único a un item. Posteriormente, Eliminar tablas Variation, Size, Color.

8. Nuestro cliente,a último minuto nos solicita que nuestro sistema soporte cupones de dos tipos:

Se anexa modelado en archivo ecommerce.png

Crear modelo Cuppon, y agregar referencias: Modelo Discount: has_many :orders Modelo Order: belongs_to :cuppon. El modelo cuppon tendra como atributos percentage, amount y user_id (que puede ser nill para cupones globales caso a). Si amount es nill, el calculo de descuento se hara en terminos porcentuales en la order, si percentage es nill el calculo se hara en terminos absolutos. Si existe un cuppon_id el cuon no puede ser usado nuevamente
