module Api
  module V1
    class ProductsController < ApplicationController

      def index
        products = Product.all
        render json: MytourLib::JsonApi::Products::CollectionWriter.new.write('products', products, params)
      end

      def create
        product = Product.create(product_params)
        render json: MytourLib::JsonApi::Products::SingleWriter.new.write('products', product, params)
      end

      def show
        product = Product.find(params[:id])
        render json: MytourLib::JsonApi::Products::SingleWriter.new.write('products', product, params)
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
