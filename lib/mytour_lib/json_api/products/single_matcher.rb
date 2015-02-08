module MytourLib
  module JsonApi
    module Products
      # Single Matcher class
      class SingleMatcher < MytourLib::JsonApi::Products::Matcher
        def build_resource_match(resource)
          {
            products: build_single_matcher(resource)
          }
        end
      end
    end
  end
end
