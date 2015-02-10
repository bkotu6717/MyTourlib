module MytourLib
  module JsonApi
    module Users
      # Single Writer class
      class SingleWriter < MytourLib::JsonApi::Users::Writer
        def build_resource
          build_single_resource(@resource)
        end
      end
    end
  end
end
