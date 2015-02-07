module Api
  module V1
    class TestsController < ApplicationController

      def index
        render json: "this is index action"
      end

      def create
        product = Product.create(product_params)
        render json: MytourLib::JsonApi::Tests::SingleWriter.new.write('products', product, params)
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
      

      private
        def product_params
          params.require(:products).permit(:name, :description, :cost)
        end
    end
  end
end
