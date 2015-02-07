require 'spec_helper'
describe '/api/v1/tests' do
  describe Api::V1::TestsController, type: :controller do

    it 'should be able to create a new test' do
      request.accept = 'application/json'
      post :create, products: {
      	name: "Testing one", 
      	description: "This test description one",
      	cost: 143
      }
      #MytourLib::JsonApi::Tests::SingleMatcher.new.match(Product.last)
     expect(response.body).to match_json_expression(
      MytourLib::JsonApi::Tests::SingleMatcher.new.match(Product.last))
    end
  end
end
