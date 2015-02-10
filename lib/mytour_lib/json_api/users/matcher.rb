module MytourLib
  module JsonApi
    module Users
      # Matcher class
      class Matcher < MytourLib::JsonApi::BaseMatcher
        def build_links
          HashBuilder.build(scope: self) do
            send('MytourLib.users') do
              href 'http://localhost/api/v1/users'
              type 'users'
            end
          end
        end

        def build_single_matcher(user)
          HashBuilder.build(scope: self) do
            id user.id
            first_name user.first_name
            last_name user.last_name
            if !user.user_information.nil?
              user_profile_id user.user_information.id
              profile_name user.user_information.profile_name       
              dob user.user_information.dob.to_s
              birth_place user.user_information.birth_place
              qualification user.user_information.qualification
              current_place user.user_information.current_place
            end
          end
        end
      end
    end
  end
end
