class EmbassiesController < ApplicationController
  before_action :set_embassy, only: [:show, :edit, :update, :destroy]

  # GET /embassies
  # GET /embassies.json
  def index
    @embassies = Embassy.all
  end

  # GET /embassies/1
  # GET /embassies/1.json
  def show
  end

  # GET /embassies/new
  def new
    @embassy = Embassy.new
  end

  # GET /embassies/1/edit
  def edit
  end

  # POST /embassies
  # POST /embassies.json
  def create
    @embassy = Embassy.new(embassy_params)

    respond_to do |format|
      if @embassy.save
        format.html { redirect_to @embassy, notice: 'Embassy was successfully created.' }
        format.json { render :show, status: :created, location: @embassy }
      else
        format.html { render :new }
        format.json { render json: @embassy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /embassies/1
  # PATCH/PUT /embassies/1.json
  def update
    respond_to do |format|
      if @embassy.update(embassy_params)
        format.html { redirect_to @embassy, notice: 'Embassy was successfully updated.' }
        format.json { render :show, status: :ok, location: @embassy }
      else
        format.html { render :edit }
        format.json { render json: @embassy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /embassies/1
  # DELETE /embassies/1.json
  def destroy
    @embassy.destroy
    respond_to do |format|
      format.html { redirect_to embassies_url, notice: 'Embassy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_embassy
      @embassy = Embassy.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def embassy_params
      params.require(:embassy).permit(:emb_name, :emb_description)
    end
end
