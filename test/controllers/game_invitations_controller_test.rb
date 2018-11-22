require 'test_helper'

class GameInvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_invitation = game_invitations(:one)
  end

  test "should get index" do
    get game_invitations_url
    assert_response :success
  end

  test "should get new" do
    get new_game_invitation_url
    assert_response :success
  end

  test "should create game_invitation" do
    assert_difference('GameInvitation.count') do
      post game_invitations_url, params: { game_invitation: { gameID: @game_invitation.gameID, invitee: @game_invitation.invitee, inviterID: @game_invitation.inviterID } }
    end

    assert_redirected_to game_invitation_url(GameInvitation.last)
  end

  test "should show game_invitation" do
    get game_invitation_url(@game_invitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_invitation_url(@game_invitation)
    assert_response :success
  end

  test "should update game_invitation" do
    patch game_invitation_url(@game_invitation), params: { game_invitation: { gameID: @game_invitation.gameID, invitee: @game_invitation.invitee, inviterID: @game_invitation.inviterID } }
    assert_redirected_to game_invitation_url(@game_invitation)
  end

  test "should destroy game_invitation" do
    assert_difference('GameInvitation.count', -1) do
      delete game_invitation_url(@game_invitation)
    end

    assert_redirected_to game_invitations_url
  end
end
