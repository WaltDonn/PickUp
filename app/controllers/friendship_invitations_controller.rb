class FriendshipInvitationsController < ApplicationController
  before_action :set_friendship_invitation, only: [:show, :edit, :update, :destroy]

  # GET /friendship_invitations
  # GET /friendship_invitations.json
  def index
    @friendship_invitations = FriendshipInvitation.all
  end

  # GET /friendship_invitations/1
  # GET /friendship_invitations/1.json
  def show
  end

  # GET /friendship_invitations/new
  def new
    @friendship_invitation = FriendshipInvitation.new
  end

  # GET /friendship_invitations/1/edit
  def edit
  end

  # POST /friendship_invitations
  # POST /friendship_invitations.json
  def create
    @friendship_invitation = FriendshipInvitation.new(friendship_invitation_params)

    respond_to do |format|
      if @friendship_invitation.save
        format.html { redirect_to @friendship_invitation, notice: 'Friendship invitation was successfully created.' }
        format.json { render :show, status: :created, location: @friendship_invitation }
      else
        format.html { render :new }
        format.json { render json: @friendship_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /friendship_invitations/1
  # PATCH/PUT /friendship_invitations/1.json
  def update
    respond_to do |format|
      if @friendship_invitation.update(friendship_invitation_params)
        format.html { redirect_to @friendship_invitation, notice: 'Friendship invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @friendship_invitation }
      else
        format.html { render :edit }
        format.json { render json: @friendship_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /friendship_invitations/1
  # DELETE /friendship_invitations/1.json
  def destroy
    @friendship_invitation.destroy
    respond_to do |format|
      format.html { redirect_to friendship_invitations_url, notice: 'Friendship invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friendship_invitation
      @friendship_invitation = FriendshipInvitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def friendship_invitation_params
      params.require(:friendship_invitation).permit(:inviteeID, :inviterID)
    end
end
