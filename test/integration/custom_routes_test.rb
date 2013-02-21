require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
 test "That /login works"  do
 	get '/login'
 	assert_response :success
 end
 test "that /logout route opens the log out page" do
 	get '/logout'
 	assert_response :redirect
 	assert_redirected_to '/'
 end
 test "that /register route opens to sign up page" do
get '/register'
assert_response :success
 end
test"that a profile page works"do
get '/Wayko2'
assert_response :success

end

end
