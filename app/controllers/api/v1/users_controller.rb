# info everybody should returns status code for each action and test response in rspec
module Api
  module V1
    # Users controller
    class UsersController < ApplicationController
      before_action :getting_user_info, except: [:create, :index]

      def index
        users = User.all
        render json: MytourLib::JsonApi::Users::CollectionWriter.new.write('users', users, params)
      end

      def create
        user = User.create!(users_params)
        puts user.user_information.inspect
        if user.valid?
          render status: 201, json: MytourLib::JsonApi::Users::SingleWriter.new.write('users', user, params)
        end
      rescue ActiveRecord::RecordInvalid => exception
        render status: 403, json: exception.record.errors
      end

      def show
        render status: 201, json: MytourLib::JsonApi::Users::SingleWriter.new.write('users', @user, params)
       rescue ActiveRecord::RecordInvalid => exception
         render status: 403, json: exception.record.errors
      end

      def update
        @user.update_attributes(users_params)
        render status: 201, json: MytourLib::JsonApi::Users::SingleWriter.new.write('users', @user, params)
      rescue ActiveRecord::RecordInvalid => exception
        render status: 403, json: exception.record.errors
      end

      def destroy
        @user.destroy
        render status: 204, json: nil
      rescue ActiveRecord::RecordInvalid => exception
        render status: 403, json: exception.record.errors
      end

      def request_management
        if params[:users][:request_status]=='awaiting'
          @user.friends.create(sender_id: params[:users][:sender_id], 
            request_status: User.request_statuses[:awaiting])
        elsif params[:users][:request_status]=='accept'
          puts @user.friends.inspect
          # puts @user.friends.where(sender_id: params[:users][:sender_id]).inspect
        end
        render :json => "ok"
      end
      private

      def users_params
        params.require(:users).permit(:first_name, :last_name, :email,
                                      user_information_attributes: [:profile_name, :dob, :birth_place, :qualification, :current_place])
      end

      def getting_user_info
        @user = User.find(params[:id])
      end
    end
  end
end
