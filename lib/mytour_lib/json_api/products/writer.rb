module MytourLib
  module JsonApi
    module Products
      # Writer class
      class Writer < MytourLib::JsonApi::BaseWriter
        def build_links
          HashBuilder.build(scope: self) do
            send('MytourLib.products') do
              href 'http://localhost/api/v1/products'
              type 'products'
            end
          end
        end

        def build_single_resource(product)
          HashBuilder.build(scope: self) do
            id product.id
            name product.name
            description product.description
            cost product.cost
          end
        end
      end
    end
  end
end
