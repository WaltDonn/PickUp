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

  ## Controller for "Going" button on games index page
  def rsvp_going
    game = Game.find(params[:game_id])
    if game.curr_size < game.max_size
      game.curr_size = game.curr_size + 1
      game.save
    else
      return
    end

    @user_game_pair = UserGamePair.new
    @user_game_pair.game_id = game.id
    @user_game_pair.user_id = params[:user_id]
    @user_game_pair.maybe_going = true
    @user_game_pair.is_creator = false

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


  # Controller for "Maybe" button on games index page
  def rsvp_maybe
    game = Game.find(params[:game_id])

    @user_game_pair = UserGamePair.new
    @user_game_pair.game_id = game.id
    @user_game_pair.user_id = params[:user_id]
    @user_game_pair.maybe_going = false
    @user_game_pair.is_creator = false

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
    # Decrement current game size if user was going
    if @user_game_pair.maybe_going
      game = Game.find(@user_game_pair.game_id)
      game.curr_size -= 1
      game.save
    end
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
      params.require(:user_game_pair).permit(:maybe_going, :is_creator, :userID, :gameID)
    end
end
