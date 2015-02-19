require 'spec_helper'
describe '/api/v1/tests' do
  describe Api::V1::UsersController, type: :controller do
    let(:user) { FactoryGirl.create(:user) }
    let(:user_one) { FactoryGirl.create(:user, :request_user)}
    it 'should able get the list of users' do
      user
      get :index
      expect(response.body).to match_json_expression(
      MytourLib::JsonApi::Users::CollectionMatcher.new.match(User.all))
    end

    it 'should be able to create a new user' do
      request.accept = 'application/json'
      post :create, users: {
        first_name: 'admin',
        last_name: 'MytourLib',
        email: 'admin@MytourLib.com',
        user_information_attributes: {
          profile_name: 'MadhuRise',
          dob: Date.new(1988, 11, 3),
          birth_place: 'K.bitragunta',
          qualification: 'MCA',
          current_place: 'Hyderbad'
        }

      }
      expect(response.status).to eq(201)
      expect(response.body).to match_json_expression(
       MytourLib::JsonApi::Users::SingleMatcher.new.match(User.last))
    end

    it 'should able to show the user' do
      user
      request.accept = 'application/json'
      get :show, id: user.id
      expect(response.status).to eq(201)
      expect(response.body).to match_json_expression(
       MytourLib::JsonApi::Users::SingleMatcher.new.match(user))
    end

    it 'should able to update user information' do
      user
      put :update, id: user.id, users: {
        first_name: 'Admin',
        last_name: 'MytourLib',
        user_information_attributes: {
          profile_name: 'MadhuRiseOne',
          dob: Date.new(1988, 11, 3),
          birth_place: 'K.bitragunta',
          qualificaion: 'MCA',
          current_place: 'Hyderbad'
        }
      }
      user.reload
      expect(response.body).to match_json_expression(
       MytourLib::JsonApi::Users::SingleMatcher.new.match(user))
      expect(user.first_name).to eq('Admin')
      expect(user.user_information.profile_name). to eq('MadhuRiseOne')
      puts user.user_information
    end

    it 'should able to delete the user' do
      user
      request.accept = 'application/json'
      delete :destroy, id: user.id
      expect(response.status).to eq(204)
      expect(User.all.count).to eq(0)
    end

    it 'should able to send request to another user with a waiting status' do
      user
      user_one
      put :request_management, id: user.id, users: {
        sender_id: user_one.id, request_status: 'awaiting'
      }
      
      put :request_management, id: user_one.id, users: {
        sender_id: user.id, request_status: 'accept'
      }
      puts "checking information"
    end
  end
end
