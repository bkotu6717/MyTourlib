module MytourLib
  module JsonApi
    module Users
      # ColUserslection Writer class
      class CollectionWriter < MytourLib::JsonApi::Users::Writer
        def build_resource
          resource.map do |user|
            build_single_resource(user)
          end
        end
      end
    end
  end
end
