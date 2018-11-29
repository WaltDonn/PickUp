class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    # WALTER - hard coding sports here
    @games = Game.all
    if params[:sport1].nil?
      @games = @games.not_for_sport(1)
    end
    if params[:sport2].nil?
      @games = @games.not_for_sport(2)
    end
    if params[:sport3].nil?
      @games = @games.not_for_sport(3)
    end
    if params[:sport4].nil?
      @games = @games.not_for_sport(4)
    end
    if params[:sport5].nil?
      @games = @games.not_for_sport(5)
    end
    # WALTER - filtering coming from url params, not user
    if params[:time_dist] == 'time'
      @games = @games.sort_time 
    else
      @games = @games.sort_location
    end
  end

  # GET /games/1
  # GET /games/1.json
  def show
  end

  # GET /games/new
  def new
    @game = Game.new
  end

  # GET /games/1/edit
  def edit
  end

  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:time, :max_size, :curr_size, :description, :location_id, :sport_id)
    end
end
