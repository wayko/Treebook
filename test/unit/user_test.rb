require 'test_helper'

class UserTest < ActiveSupport::TestCase


     test "a user should a profile name without spaces" do 
    	user = User.new
    	user.profile_name = users(:jasontest).profile_name
        user.first_name = users(:jasontest).first_name
        user.last_name = users(:jasontest).last_name
        user.email = users(:jasontest).email
        user.password = "testpw123"
        user.password_confirmation = "testpw123"
  		assert !user.save
        puts  user.errors.inspect
    	assert !user.errors[:profile_name].empty?
    	assert user.errors[:profile_name].include?("Must be formatted correctly")
    end
end
