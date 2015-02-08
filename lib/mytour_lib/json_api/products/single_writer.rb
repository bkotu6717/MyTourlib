module MytourLib
  module JsonApi
    module Products
      # Single Writer class
      class SingleWriter < MytourLib::JsonApi::Products::Writer
        def build_resource
          build_single_resource(@resource)
        end
      end
    end
  end
end
