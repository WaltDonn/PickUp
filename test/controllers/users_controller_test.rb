require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { age: @user.age, bio: @user.bio, curr_location: @user.curr_location, email: @user.email, first_name: @user.first_name, game_in_range: @user.game_in_range, last_name: @user.last_name, password: @user.password, password_confirmation: @user.password_confirmation, time_dist: @user.time_dist } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { age: @user.age, bio: @user.bio, curr_location: @user.curr_location, email: @user.email, first_name: @user.first_name, game_in_range: @user.game_in_range, last_name: @user.last_name, password: @user.password, password_confirmation: @user.password_confirmation, time_dist: @user.time_dist } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
