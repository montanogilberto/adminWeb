class JudgmentsController < ApplicationController
  before_action :set_judgment, only: [:show, :edit, :update, :destroy]

  # GET /judgments
  # GET /judgments.json
  def index
    @judgments = Judgment.all
  end

  # GET /judgments/1
  # GET /judgments/1.json
  def show
  end

  # GET /judgments/new
  def new
    @judgment = Judgment.new
  end

  # GET /judgments/1/edit
  def edit
  end

  # POST /judgments
  # POST /judgments.json
  def create
    @judgment = Judgment.new(judgment_params)

    respond_to do |format|
      if @judgment.save
        format.html { redirect_to @judgment, notice: 'Judgment was successfully created.' }
        format.json { render :show, status: :created, location: @judgment }
      else
        format.html { render :new }
        format.json { render json: @judgment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /judgments/1
  # PATCH/PUT /judgments/1.json
  def update
    respond_to do |format|
      if @judgment.update(judgment_params)
        format.html { redirect_to @judgment, notice: 'Judgment was successfully updated.' }
        format.json { render :show, status: :ok, location: @judgment }
      else
        format.html { render :edit }
        format.json { render json: @judgment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /judgments/1
  # DELETE /judgments/1.json
  def destroy
    @judgment.destroy
    respond_to do |format|
      format.html { redirect_to judgments_url, notice: 'Judgment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_judgment
      @judgment = Judgment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def judgment_params
      params.require(:judgment).permit(:name)
    end
end
