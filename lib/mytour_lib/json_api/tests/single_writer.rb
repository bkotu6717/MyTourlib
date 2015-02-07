module MytourLib
  module JsonApi
    module Tests
      # Single Writer class
      class SingleWriter < MytourLib::JsonApi::Tests::Writer

        def build_resource
          build_single_resource(@resource)
        end
      end
    end
  end
end
