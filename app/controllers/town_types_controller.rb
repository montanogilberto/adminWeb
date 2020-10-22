class TownTypesController < ApplicationController
  before_action :set_town_type, only: [:show, :edit, :update, :destroy]

  # GET /town_types
  # GET /town_types.json
  def index
    @town_types = TownType.all
  end

  # GET /town_types/1
  # GET /town_types/1.json
  def show
  end

  # GET /town_types/new
  def new
    @town_type = TownType.new
  end

  # GET /town_types/1/edit
  def edit
  end

  # POST /town_types
  # POST /town_types.json
  def create
    @town_type = TownType.new(town_type_params)

    respond_to do |format|
      if @town_type.save
        format.html { redirect_to @town_type, notice: 'Town type was successfully created.' }
        format.json { render :show, status: :created, location: @town_type }
      else
        format.html { render :new }
        format.json { render json: @town_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /town_types/1
  # PATCH/PUT /town_types/1.json
  def update
    respond_to do |format|
      if @town_type.update(town_type_params)
        format.html { redirect_to @town_type, notice: 'Town type was successfully updated.' }
        format.json { render :show, status: :ok, location: @town_type }
      else
        format.html { render :edit }
        format.json { render json: @town_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /town_types/1
  # DELETE /town_types/1.json
  def destroy
    @town_type.destroy
    respond_to do |format|
      format.html { redirect_to town_types_url, notice: 'Town type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_town_type
      @town_type = TownType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def town_type_params
      params.require(:town_type).permit(:tipoAsentamiento, :codigo)
    end
end
