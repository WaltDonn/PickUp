class UserGamePairsController < ApplicationController
  before_action :set_user_game_pair, only: [:show, :edit, :update, :destroy]

  # GET /user_game_pairs
  # GET /user_game_pairs.json
  def index
    @user_game_pairs = UserGamePair.all
  end

  # GET /user_game_pairs/1
  # GET /user_game_pairs/1.json
  def show
  end

  # GET /user_game_pairs/new
  def new
    @user_game_pair = UserGamePair.new
  end

  # GET /user_game_pairs/1/edit
  def edit
  end

  # POST /user_game_pairs
  # POST /user_game_pairs.json
  def create
    @user_game_pair = UserGamePair.new(user_game_pair_params)

    respond_to do |format|
      if @user_game_pair.save
        format.html { redirect_to @user_game_pair, notice: 'User game pair was successfully created.' }
        format.json { render :show, status: :created, location: @user_game_pair }
      else
        format.html { render :new }
        format.json { render json: @user_game_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_game_pairs/1
  # PATCH/PUT /user_game_pairs/1.json
  def update
    respond_to do |format|
      if @user_game_pair.update(user_game_pair_params)
        format.html { redirect_to @user_game_pair, notice: 'User game pair was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_game_pair }
      else
        format.html { render :edit }
        format.json { render json: @user_game_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_game_pairs/1
  # DELETE /user_game_pairs/1.json
  def destroy
    @user_game_pair.destroy
    respond_to do |format|
      format.html { redirect_to user_game_pairs_url, notice: 'User game pair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_game_pair
      @user_game_pair = UserGamePair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_game_pair_params
      params.require(:user_game_pair).permit(:maybe_going, :is_creator, :user_id, :game_id)
    end
end
