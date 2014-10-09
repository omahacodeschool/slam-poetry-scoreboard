class RoundsController < ApplicationController
  # GET /rounds
  # GET /rounds.json
  def index
    binding.pry
    @rounds = Round.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rounds }
    end
  end

  # GET /rounds/1
  # GET /rounds/1.json
  def show
    @round = Round.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round }
    end
  end

  # GET /rounds/new
  # GET /rounds/new.json
  def new
    @round = Round.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round }
    end
  end

  # GET /rounds/1/edit
  def edit
    @round = Round.find(params[:id])
    @poets = Poet.all
  end

  # POST /rounds
  # POST /rounds.json
  def create
    @round = Round.new(params[:round])

    respond_to do |format|
      if @round.save
        format.html { redirect_to @round, notice: 'Round was successfully created.' }
        format.json { render json: @round, status: :created, location: @round }
      else
        format.html { render action: "new" }
        format.json { render json: @round.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /rounds/1
  # PUT /rounds/1.json
  def update
    @round = Round.find(params[:id])
    @round.assign_poets(params[:round][:poet])
    redirect_to round_path(@round.id)
  end

  # DELETE /rounds/1
  # DELETE /rounds/1.json
  def destroy
    @round = Round.find(params[:id])
    @round.destroy

    respond_to do |format|
      format.html { redirect_to rounds_url }
      format.json { head :no_content }
    end
  end
  
  # Score Entry
  def score
    @round = Round.find(params[:id])
  end
  
  # Updates performances for round with scores from score acion
  def save_score
    @round = Round.find(params[:id])
    @round.update_attributes(params[:round])
  end
  
  # Displays poets and scores and adds checkboxes to add poets to next round
  def round_result
    # binding.pry
    @round = Round.find(params[:id])
    @poets = []
    
    @round.performances.each do |p|
      @poets << p.poet
    end
    # @nextround = Round.new(slam_id: @round.slam_id, round_id: (@round.round_number.to_i +1)
  end
  
  # Create new round with poets from round_results and render page to add new scores
  def advance_round
    @prevrnd = Round.find(params[:id])
    
    @slam = @prevrnd.slam
    @newrnd = @slam.rounds.create(round_number: @prevrnd.round_number.to_i + 1)
    binding.pry
    @newrnd.assign_poets(params[:round][:poet])
    
    # binding.pry
  end
end
