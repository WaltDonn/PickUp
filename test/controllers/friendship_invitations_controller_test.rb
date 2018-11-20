require 'test_helper'

class FriendshipInvitationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @friendship_invitation = friendship_invitations(:one)
  end

  test "should get index" do
    get friendship_invitations_url
    assert_response :success
  end

  test "should get new" do
    get new_friendship_invitation_url
    assert_response :success
  end

  test "should create friendship_invitation" do
    assert_difference('FriendshipInvitation.count') do
      post friendship_invitations_url, params: { friendship_invitation: { inviteeID: @friendship_invitation.inviteeID, inviterID: @friendship_invitation.inviterID } }
    end

    assert_redirected_to friendship_invitation_url(FriendshipInvitation.last)
  end

  test "should show friendship_invitation" do
    get friendship_invitation_url(@friendship_invitation)
    assert_response :success
  end

  test "should get edit" do
    get edit_friendship_invitation_url(@friendship_invitation)
    assert_response :success
  end

  test "should update friendship_invitation" do
    patch friendship_invitation_url(@friendship_invitation), params: { friendship_invitation: { inviteeID: @friendship_invitation.inviteeID, inviterID: @friendship_invitation.inviterID } }
    assert_redirected_to friendship_invitation_url(@friendship_invitation)
  end

  test "should destroy friendship_invitation" do
    assert_difference('FriendshipInvitation.count', -1) do
      delete friendship_invitation_url(@friendship_invitation)
    end

    assert_redirected_to friendship_invitations_url
  end
end
