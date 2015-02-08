module MytourLib
  module JsonApi
    module Products
      # ColProductslection Writer class
      class CollectionWriter < MytourLib::JsonApi::Products::Writer
        def build_resource
          resource.map do |product|
            build_single_resource(product)
          end
        end
      end
    end
  end
end
