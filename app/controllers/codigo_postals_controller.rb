class CodigoPostalsController < ApplicationController
  before_action :set_codigo_postal, only: [:show, :edit, :update, :destroy]

  # GET /codigo_postals
  # GET /codigo_postals.json
  def index
    @codigo_postals = CodigoPostal.all
  end

  # GET /codigo_postals/1
  # GET /codigo_postals/1.json
  def show
  end

  # GET /codigo_postals/new
  def new
    @codigo_postal = CodigoPostal.new
  end

  # GET /codigo_postals/1/edit
  def edit
  end

  # POST /codigo_postals
  # POST /codigo_postals.json
  def create
    @codigo_postal = CodigoPostal.new(codigo_postal_params)

    respond_to do |format|
      if @codigo_postal.save
        format.html { redirect_to @codigo_postal, notice: 'Codigo postal was successfully created.' }
        format.json { render :show, status: :created, location: @codigo_postal }
      else
        format.html { render :new }
        format.json { render json: @codigo_postal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /codigo_postals/1
  # PATCH/PUT /codigo_postals/1.json
  def update
    respond_to do |format|
      if @codigo_postal.update(codigo_postal_params)
        format.html { redirect_to @codigo_postal, notice: 'Codigo postal was successfully updated.' }
        format.json { render :show, status: :ok, location: @codigo_postal }
      else
        format.html { render :edit }
        format.json { render json: @codigo_postal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codigo_postals/1
  # DELETE /codigo_postals/1.json
  def destroy
    @codigo_postal.destroy
    respond_to do |format|
      format.html { redirect_to codigo_postals_url, notice: 'Codigo postal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_codigo_postal
      @codigo_postal = CodigoPostal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def codigo_postal_params
      params.require(:codigo_postal).permit(:town_id, :codigoPostal)
    end
end
