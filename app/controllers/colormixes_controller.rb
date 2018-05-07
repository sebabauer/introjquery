class ColormixesController < ApplicationController
  before_action :set_colormix, only: [:show, :edit, :update, :destroy]

  # GET /colormixes
  # GET /colormixes.json
  def index
    @colormixes = Colormix.all
  end

  # GET /colormixes/1
  # GET /colormixes/1.json
  def show
  end

  # GET /colormixes/new
  def new
    @colormix = Colormix.new
  end

  # GET /colormixes/1/edit
  def edit
  end

  # POST /colormixes
  # POST /colormixes.json
  def create
    @colormix = Colormix.new(colormix_params)

    respond_to do |format|
      if @colormix.save
        format.html { redirect_to @colormix, notice: 'Colormix was successfully created.' }
        format.json { render :show, status: :created, location: @colormix }
      else
        format.html { render :new }
        format.json { render json: @colormix.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colormixes/1
  # PATCH/PUT /colormixes/1.json
  def update
    respond_to do |format|
      if @colormix.update(colormix_params)
        format.html { redirect_to @colormix, notice: 'Colormix was successfully updated.' }
        format.json { render :show, status: :ok, location: @colormix }
      else
        format.html { render :edit }
        format.json { render json: @colormix.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colormixes/1
  # DELETE /colormixes/1.json
  def destroy
    @colormix.destroy
    respond_to do |format|
      format.html { redirect_to colormixes_url, notice: 'Colormix was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colormix
      @colormix = Colormix.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def colormix_params
      params.require(:colormix).permit(:red, :gree, :blue, :finalcolor)
    end
end
