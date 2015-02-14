module MytourLib
  module JsonApi
    module Users
      # Collection Matcher class
      class CollectionMatcher < MytourLib::JsonApi::Users::Matcher
        def build_resource_match(resource)
          {
            users: resource.map do |user|
              build_single_matcher(user)
            end
          }
        end
      end
    end
  end
end
