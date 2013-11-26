class TheatersController < ApplicationController
  before_action :set_theater, only: [:show, :edit, :update, :destroy]

  # GET /theaters
  # GET /theaters.json
  def index
    @theaters = Theater.all
  end

  # GET /theaters/1
  # GET /theaters/1.json
  def show
  end

  # GET /theaters/new
  def new
    @theater = Theater.new
  end

  # GET /theaters/1/edit
  def edit
  end

  # POST /theaters
  # POST /theaters.json
  def create
    # Parameters: { "theater" => { "name" => "The Vic", "address"}}
    @theater = Theater.new(params["theater"])

    respond_to do |format|
      if @theater.save
        format.html { redirect_to @theater, notice: 'Theater was successfully created.' }
        format.json { render action: 'show', status: :created, location: @theater }
      else
        format.html { render action: 'new' }
        format.json { render json: @theater.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theaters/1
  # PATCH/PUT /theaters/1.json
  def update
    respond_to do |format|
      if @theater.update(theater_params)
        format.html { redirect_to @theater, notice: 'Theater was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @theater.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theaters/1
  # DELETE /theaters/1.json
  def destroy
    @theater.destroy
    respond_to do |format|
      format.html { redirect_to theaters_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theater
      @theater = Theater.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theater_params
      params.require(:theater).permit(:name, :address, :hours)
    end
end
