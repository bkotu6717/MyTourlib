module MytourLib
  module JsonApi
    module Tests
      # Single Writer class
      class SingleWriter < MytourLib::JsonApi::Tests::Writer

        def build_resource
          puts "testing"
          build_single_resource(@resource)
        end

        def build_linked_resources
          # build_single_linked_resources(roles, status, @resource.address)
        end
      end
    end
  end
end
