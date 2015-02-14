module MytourLib
  module JsonApi
    module Users
      # Single Matcher class
      class SingleMatcher < MytourLib::JsonApi::Users::Matcher
        def build_resource_match(resource)
          {
            users: build_single_matcher(resource)
          }
        end
      end
    end
  end
end
