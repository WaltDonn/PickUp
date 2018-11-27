class GameInvitationsController < ApplicationController
  before_action :set_game_invitation, only: [:show, :edit, :update, :destroy]

  # GET /game_invitations
  # GET /game_invitations.json
  def index
    @game_invitations = GameInvitation.all
  end

  # GET /game_invitations/1
  # GET /game_invitations/1.json
  def show
  end

  # GET /game_invitations/new
  def new
    @game_invitation = GameInvitation.new
  end

  # GET /game_invitations/1/edit
  def edit
  end

  # POST /game_invitations
  # POST /game_invitations.json
  def create
    @game_invitation = GameInvitation.new(game_invitation_params)

    respond_to do |format|
      if @game_invitation.save
        format.html { redirect_to @game_invitation, notice: 'Game invitation was successfully created.' }
        format.json { render :show, status: :created, location: @game_invitation }
      else
        format.html { render :new }
        format.json { render json: @game_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_invitations/1
  # PATCH/PUT /game_invitations/1.json
  def update
    respond_to do |format|
      if @game_invitation.update(game_invitation_params)
        format.html { redirect_to @game_invitation, notice: 'Game invitation was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_invitation }
      else
        format.html { render :edit }
        format.json { render json: @game_invitation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_invitations/1
  # DELETE /game_invitations/1.json
  def destroy
    @game_invitation.destroy
    respond_to do |format|
      format.html { redirect_to game_invitations_url, notice: 'Game invitation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_invitation
      @game_invitation = GameInvitation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_invitation_params
      params.require(:game_invitation).permit(:inviterID, :invitee, :gameID)
    end
end
