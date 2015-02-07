module MytourLib
  module JsonApi
    module Tests
      # Single Matcher class
      class SingleMatcher < MytourLib::JsonApi::Tests::Matcher
        
        def build_resource_match(resource)
          {
            products: build_single_matcher(resource)
          }
        end
        
      end
    end
  end
end
