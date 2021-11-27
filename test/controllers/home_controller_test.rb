require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success

    assert_select 'title', 'Art.ea.istic'
    assert_select 'h1', 'Welcome to Art.ea.istic! :)'
    assert_select 'p', 'Here you can keep track of interesting pieces of art and draw inspiration from the work of famous artists.'
  end

end
