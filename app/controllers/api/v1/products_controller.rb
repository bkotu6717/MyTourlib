# info everybody should returns status code for each action and test response in rspec
module Api
  module V1
    # Products controller
    class ProductsController < ApplicationController
      def index
        products = Product.all
        render json: MytourLib::JsonApi::Products::CollectionWriter.new.write('products', products, params)
      end

      def create
        product = Product.create(product_params)
        render status: 201, json: MytourLib::JsonApi::Products::SingleWriter.new.write('products', product, params)
      rescue ActiveRecord::RecordInvalid => exception
        render status: 403, json: exception.record.errors
      end

      def show
        product = Product.find(params[:id])
        render status: 201, json: MytourLib::JsonApi::Products::SingleWriter.new.write('products', product, params)
       rescue ActiveRecord::RecordInvalid => exception
         render status: 403, json: exception.record.errors
      end

      def update
        render status: 201, json: 'this is update action'
      end

      def destroy
        render status: 204, json: nil
      rescue ActiveRecord::RecordInvalid => exception
        render status: 403, json: exception.record.errors
      end

      private

      def product_params
        params.require(:products).permit(:name, :description, :cost)
      end
    end
  end
end
