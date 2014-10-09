class RoundsController < ApplicationController
  def index
    @rounds = Round.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @rounds }
    end
  end

  def show
    @round = Round.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @round }
    end
  end

  def new
    @round = Round.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @round }
    end
  end

  # Add poets to initial slam round
  def edit
    @round = Round.find(params[:id])
    @poets = Poet.all
  end

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

  def update
    @round = Round.find(params[:id])
    @round.assign_poets(params[:round][:poet])
    redirect_to score_path(@round.id)
  end

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
    redirect_to round_result_path(@round.id)
  end
  
  # Displays poets and scores and adds checkboxes to add poets to next round
  def round_result
    @round = Round.find(params[:id])
    @poets = []
    
    @round.performances.each do |p|
      @poets << p.poet
    end
  end
  
  # Create new round with poets from round_results and render page to add new scores
  def advance_round
    @prevrnd = Round.find(params[:id])
    
    @slam = @prevrnd.slam
    @newrnd = @slam.rounds.create(round_number: @prevrnd.round_number.to_i + 1)

    @newrnd.assign_poets(params[:round][:poet])    
  end

end
