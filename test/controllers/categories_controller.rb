require 'test_helper'

class CategoriesController < ActionController::TestCase
    
    test "should get categories index" do
      get :index
      assert_response :success
    
    end
    
    test "should get new" do
      get :new
      assert_response :success
    end
    
    test "should get show" do 
      get(:show, {'id' => @category.id})
      assert_response :success
    end
end


test "should redirect create when admin not logged in" do 
  assert_no_difference 'Category.count' do 
    post :create, category: { name: "sports" }
    end
    assert_redirect_to categories_path
  end

end 