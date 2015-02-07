module MytourLib
  module JsonApi
    module Products
      # Matcher class
      class Matcher < MytourLib::JsonApi::BaseMatcher
        
        def build_links
          HashBuilder.build(scope: self) do
            send('MytourLib.products') do
              href 'http://localhost/api/v1/products'
              type 'products'
            end
          end
        end

        def build_single_matcher(product)
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
