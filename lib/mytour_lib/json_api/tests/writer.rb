module MytourLib
  module JsonApi
    module Tests
      # Writer class
      class Writer < MytourLib::JsonApi::BaseWriter
        
        def build_links
        end

        def build_single_resource(resource)
          {
            first_name: "madhu",
            last_name: "Bhsakar"
          }
        end

        def build_links_with_ids(_resource)
        end

        def build_single_linked_resources(roles, status, address)
        end

      end
    end
  end
end
