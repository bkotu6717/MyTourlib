module MytourLib
  module JsonApi
    module Tests
      # Collection Matcher class
      class CollectionMatcher < MytourLib::JsonApi::Tests::Matcher
        def build_resource_match(resource)
          # {
          #   users: resource.map do |user|
          #     build_single_matcher(user)
          #   end
          # }
        end

        def build_linked_resource_match(resource)
        end
      end
    end
  end
end
