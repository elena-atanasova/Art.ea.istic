class ExhibitionsController < ApplicationController
  before_action :set_exhibition, only: %i[ show edit update destroy ]
  before_action :set_artwork, only:[:new, :create]

  # GET /exhibitions or /exhibitions.json
  def index
    @exhibitions = Exhibition.all
  end

  # GET /exhibitions/1 or /exhibitions/1.json
  def show
  end

  # GET /exhibitions/new
  def new
    @exhibition = @artwork.exhibitions.new
  end

  # GET /exhibitions/1/edit
  def edit
  end

  # POST /exhibitions or /exhibitions.json
  def create
    @exhibition = @artwork.exhibitions.new(exhibition_params)

    respond_to do |format|
      if @exhibition.save
        format.html { redirect_to @exhibition, notice: "Exhibition was successfully created." }
        format.json { render :show, status: :created, location: @exhibition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exhibitions/1 or /exhibitions/1.json
  def update
    respond_to do |format|
      if @exhibition.update(exhibition_params)
        format.html { redirect_to @exhibition, notice: "Exhibition was successfully updated." }
        format.json { render :show, status: :ok, location: @exhibition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @exhibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exhibitions/1 or /exhibitions/1.json
  def destroy
    @exhibition.destroy
    respond_to do |format|
      format.html { redirect_to exhibitions_url, notice: "Exhibition was successfully destroyed." }
      format.js { flash[:notice] = "Exhibition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exhibition
      @exhibition = Exhibition.find(params[:id])
    end

    def set_artwork
      @artwork = Artwork.find_by(id: params[:artwork_id]) || Artwork.find(exhibition_params[:artwork_id])
    end

    # Only allow a list of trusted parameters through.
    def exhibition_params
      params.require(:exhibition).permit(:artwork_id, :venue)
    end
end
