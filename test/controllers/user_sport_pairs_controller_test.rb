require 'test_helper'

class UserSportPairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_sport_pair = user_sport_pairs(:one)
  end

  test "should get index" do
    get user_sport_pairs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_sport_pair_url
    assert_response :success
  end

  test "should create user_sport_pair" do
    assert_difference('UserSportPair.count') do
      post user_sport_pairs_url, params: { user_sport_pair: { sportID: @user_sport_pair.sportID, userID: @user_sport_pair.userID } }
    end

    assert_redirected_to user_sport_pair_url(UserSportPair.last)
  end

  test "should show user_sport_pair" do
    get user_sport_pair_url(@user_sport_pair)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_sport_pair_url(@user_sport_pair)
    assert_response :success
  end

  test "should update user_sport_pair" do
    patch user_sport_pair_url(@user_sport_pair), params: { user_sport_pair: { sportID: @user_sport_pair.sportID, userID: @user_sport_pair.userID } }
    assert_redirected_to user_sport_pair_url(@user_sport_pair)
  end

  test "should destroy user_sport_pair" do
    assert_difference('UserSportPair.count', -1) do
      delete user_sport_pair_url(@user_sport_pair)
    end

    assert_redirected_to user_sport_pairs_url
  end
end
