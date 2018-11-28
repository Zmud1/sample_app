require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post users_path, params: { user: {
        name: "",
        email: "invalid@email...com",
        password: "foo",
        password_confirmation: "bar" }
      }
    end
    assert_template 'users/new'
    assert_select '.alert-danger'
  end
  
  test "valid signup information" do
    get signup_path
    assert_difference 'User.count', 1 do
      post users_path, params: { user: {
        name: "Valid Name",
        email: "validemail@gmail.com",
        password: "123456",
        password_confirmation: "123456" }
      }
    end
    
    follow_redirect!
    assert_template 'users/show'
    assert_select "Welcome"
  end
  
end

  
  