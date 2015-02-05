module Api
  module V1
    class TestsController < ApplicationController

      def index
        render json: "this is index action"
      end

      def create
        render json: "this is create action"
      end

      def show
        @test  = Test.find(params[:id])
        render json: MytourLib::JsonApi::Tests::SingleWriter.new.write('tests', @test, params)
      end

      def update
        render json: "this is update action"
      end

      def destroy
        render json: "this is update action"
      end
      
    end
  end
end
