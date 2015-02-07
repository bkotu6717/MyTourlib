require 'spec_helper'
describe '/api/v1/tests' do
  describe Api::V1::ProductsController, type: :controller do

  	let(:product) { FactoryGirl.create(:product) }

    
  	it 'should able get the list of products' do
  		get :index
  		expect(response.body).to match_json_expression(
      MytourLib::JsonApi::Products::CollectionMatcher.new.match(Product.all))	
  	end

    it 'should be able to create a new test' do
    	request.accept = 'application/json'
    	post :create, products: {
    		name: "Testing one",
    		description: "This test description one",
    		cost: 143
    	}
     expect(response.body).to match_json_expression(
      MytourLib::JsonApi::Products::SingleMatcher.new.match(Product.last))
    end

    it 'should able to show the product' do
    	product # this is call the above one it can be useful reusable
    	request.accept = 'application/json'
    	get :show, id: product.id
    	expect(response.body).to match_json_expression(
      	MytourLib::JsonApi::Products::SingleMatcher.new.match(product))
    end

  end
end
