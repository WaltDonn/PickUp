class UserSportPairsController < ApplicationController
  before_action :set_user_sport_pair, only: [:show, :edit, :update, :destroy]

  # GET /user_sport_pairs
  # GET /user_sport_pairs.json
  def index
    @user_sport_pairs = UserSportPair.all
  end

  # GET /user_sport_pairs/1
  # GET /user_sport_pairs/1.json
  def show
  end

  # GET /user_sport_pairs/new
  def new
    @user_sport_pair = UserSportPair.new
  end

  # GET /user_sport_pairs/1/edit
  def edit
  end

  # POST /user_sport_pairs
  # POST /user_sport_pairs.json
  def create
    @user_sport_pair = UserSportPair.new(user_sport_pair_params)

    respond_to do |format|
      if @user_sport_pair.save
        format.html { redirect_to @user_sport_pair, notice: 'User sport pair was successfully created.' }
        format.json { render :show, status: :created, location: @user_sport_pair }
      else
        format.html { render :new }
        format.json { render json: @user_sport_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_sport_pairs/1
  # PATCH/PUT /user_sport_pairs/1.json
  def update
    respond_to do |format|
      if @user_sport_pair.update(user_sport_pair_params)
        format.html { redirect_to @user_sport_pair, notice: 'User sport pair was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_sport_pair }
      else
        format.html { render :edit }
        format.json { render json: @user_sport_pair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_sport_pairs/1
  # DELETE /user_sport_pairs/1.json
  def destroy
    @user_sport_pair.destroy
    respond_to do |format|
      format.html { redirect_to user_sport_pairs_url, notice: 'User sport pair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sport_pair
      @user_sport_pair = UserSportPair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_sport_pair_params
      params.require(:user_sport_pair).permit(:userID, :sportID)
    end
end
