module MytourLib
  module JsonApi
    module Tests
      # ColTestslection Writer class
      class CollectionWriter < MytourLib::JsonApi::Tests::Writer
        
        def build_resource
          # resource.map do |user|
          #   build_single_resource(user)
          # end
        end

        def build_linked_resources
        end
      end
    end
  end
end
