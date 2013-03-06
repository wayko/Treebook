require 'test_helper'

class UserFriendshipsControllerTest < ActionController::TestCase
	context "#new" do 
		context "when not logged in" do
			should "redirect to the login page" do
				get :new
				assert_response :redirect
			end
			end

			context "when logged in" do
				setup do
					sign_in users(:jason)
				end
				should "get new and return success" do
					get :new
					assert_response :success

				end

				should "should set a flaah error if the friend_id params is missing" do
					get :new, {}
					assert_equal "Friend Required",  flash[:error]
				end 

				should "display the friend's name" do
					get :new, friend_id: users(:jose).id
					assert_match /#{users(:jose).full_name}/, response.body
				end
			end
		end
	end