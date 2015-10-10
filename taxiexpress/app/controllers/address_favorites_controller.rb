class AddressFavoritesController < ApplicationController
  before_action :set_address_favorite, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /address_favorites
  # GET /address_favorites.json
  def index
    @address_favorites = AddressFavorite.all
  end

  # GET /address_favorites/1
  # GET /address_favorites/1.json
  def show
  end

  # GET /address_favorites/new
  def new
    @address_favorite = AddressFavorite.new
  end

  # GET /address_favorites/1/edit
  def edit
  end

  # POST /address_favorites
  # POST /address_favorites.json
  def create
      @address_favorite = AddressFavorite.new(address_favorite_params)
    
     if (current_user.user_type == "C")
        @address_favorite.user_id = current_user.id
     end

    respond_to do |format|
      if @address_favorite.save
        format.html { redirect_to @address_favorite, notice: 'Address favorite was successfully created.' }
        format.json { render :show, status: :created, location: @address_favorite }
      else
        format.html { render :new }
        format.json { render json: @address_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /address_favorites/1
  # PATCH/PUT /address_favorites/1.json
  def update
    respond_to do |format|
      if @address_favorite.update(address_favorite_params)
        format.html { redirect_to @address_favorite, notice: 'Address favorite was successfully updated.' }
        format.json { render :show, status: :ok, location: @address_favorite }
      else
        format.html { render :edit }
        format.json { render json: @address_favorite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /address_favorites/1
  # DELETE /address_favorites/1.json
  def destroy
    @address_favorite.destroy
    respond_to do |format|
      format.html { redirect_to address_favorites_url, notice: 'Address favorite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_address_favorite
      @address_favorite = AddressFavorite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def address_favorite_params
      params.require(:address_favorite).permit(:name, :user_id, :address_id)
    end
end
