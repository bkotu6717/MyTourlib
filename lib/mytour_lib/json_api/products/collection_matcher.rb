module MytourLib
  module JsonApi
    module Products
      # Collection Matcher class
      class CollectionMatcher < MytourLib::JsonApi::Products::Matcher
        def build_resource_match(resource)
          {
            products: resource.map do |product|
              build_single_matcher(product)
            end
          }
        end
      end
    end
  end
end
