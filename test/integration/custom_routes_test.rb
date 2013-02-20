require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
 test "That /login works"  do
 	get '/login'
 	assert_response :success
 end
end
