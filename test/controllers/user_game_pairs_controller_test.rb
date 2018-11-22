require 'test_helper'

class UserGamePairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_game_pair = user_game_pairs(:one)
  end

  test "should get index" do
    get user_game_pairs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_game_pair_url
    assert_response :success
  end

  test "should create user_game_pair" do
    assert_difference('UserGamePair.count') do
      post user_game_pairs_url, params: { user_game_pair: { gameID: @user_game_pair.gameID, is_creator: @user_game_pair.is_creator, maybe_going: @user_game_pair.maybe_going, userID: @user_game_pair.userID } }
    end

    assert_redirected_to user_game_pair_url(UserGamePair.last)
  end

  test "should show user_game_pair" do
    get user_game_pair_url(@user_game_pair)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_game_pair_url(@user_game_pair)
    assert_response :success
  end

  test "should update user_game_pair" do
    patch user_game_pair_url(@user_game_pair), params: { user_game_pair: { gameID: @user_game_pair.gameID, is_creator: @user_game_pair.is_creator, maybe_going: @user_game_pair.maybe_going, userID: @user_game_pair.userID } }
    assert_redirected_to user_game_pair_url(@user_game_pair)
  end

  test "should destroy user_game_pair" do
    assert_difference('UserGamePair.count', -1) do
      delete user_game_pair_url(@user_game_pair)
    end

    assert_redirected_to user_game_pairs_url
  end
end
