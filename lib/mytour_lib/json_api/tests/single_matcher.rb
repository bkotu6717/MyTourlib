module MyTourLib
  module JsonApi
    module Tests
      # Single Matcher class
      class SingleMatcher < MyTourLib::JsonApi::Tests::Matcher
        def build_resource_match(resource)
          {
            users: build_single_matcher(resource)
          }
        end

        def build_linked_resource_match(resource)
        end
      end
    end
  end
end
