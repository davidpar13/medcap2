class SexesController < ApplicationController
  before_action :set_sex, only: %i[ show edit update destroy ]

  # GET /sexes or /sexes.json
  def index
    @sexes = Sex.all
  end

  # GET /sexes/1 or /sexes/1.json
  def show
  end

  # GET /sexes/new
  def new
    @sex = Sex.new
  end

  # GET /sexes/1/edit
  def edit
  end

  # POST /sexes or /sexes.json
  def create
    @sex = Sex.new(sex_params)

    respond_to do |format|
      if @sex.save
        format.html { redirect_to sex_url(@sex), notice: "Sex was successfully created." }
        format.json { render :show, status: :created, location: @sex }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexes/1 or /sexes/1.json
  def update
    respond_to do |format|
      if @sex.update(sex_params)
        format.html { redirect_to sex_url(@sex), notice: "Sex was successfully updated." }
        format.json { render :show, status: :ok, location: @sex }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexes/1 or /sexes/1.json
  def destroy
    @sex.destroy!

    respond_to do |format|
      format.html { redirect_to sexes_url, notice: "Sex was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sex
      @sex = Sex.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sex_params
      params.require(:sex).permit(:sex_name, :active)
    end
end
