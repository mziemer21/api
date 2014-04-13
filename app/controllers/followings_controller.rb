class FollowingsController < ApplicationController
  before_action :set_following, only: [:show, :edit, :update, :destroy]

  # GET /followings
  # GET /followings.json
  def index
    @followings = Following.all
  end

  # GET /followings/1
  # GET /followings/1.json
  def show
  end

  # GET /followings/new
  def new
    @following = Following.new
  end

  # GET /followings/1/edit
  def edit
  end

  # POST /followings
  # POST /followings.json
  def create
    @following = Following.new(following_params)

    respond_to do |format|
      if @following.save
        format.html { redirect_to @following, notice: 'Following was successfully created.' }
        format.json { render action: 'show', status: :created, location: @following }
      else
        format.html { render action: 'new' }
        format.json { render json: @following.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /followings/1
  # PATCH/PUT /followings/1.json
  def update
    respond_to do |format|
      if @following.update(following_params)
        format.html { redirect_to @following, notice: 'Following was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @following.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /followings/1
  # DELETE /followings/1.json
  def destroy
    @following.destroy
    respond_to do |format|
      format.html { redirect_to followings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_following
      @following = Following.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def following_params
      params[:following]
    end
end
