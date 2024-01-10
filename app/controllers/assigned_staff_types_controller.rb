class AssignedStaffTypesController < ApplicationController
  before_action :set_assigned_staff_type, only: %i[ show edit update destroy ]

  # GET /assigned_staff_types or /assigned_staff_types.json
  def index
    @assigned_staff_types = AssignedStaffType.all
  end

  # GET /assigned_staff_types/1 or /assigned_staff_types/1.json
  def show
  end

  # GET /assigned_staff_types/new
  def new
    @assigned_staff_type = AssignedStaffType.new
  end

  # GET /assigned_staff_types/1/edit
  def edit
  end

  # POST /assigned_staff_types or /assigned_staff_types.json
  def create
    @assigned_staff_type = AssignedStaffType.new(assigned_staff_type_params)

    respond_to do |format|
      if @assigned_staff_type.save
        format.html { redirect_to assigned_staff_type_url(@assigned_staff_type), notice: "Assigned staff type was successfully created." }
        format.json { render :show, status: :created, location: @assigned_staff_type }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assigned_staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_staff_types/1 or /assigned_staff_types/1.json
  def update
    respond_to do |format|
      if @assigned_staff_type.update(assigned_staff_type_params)
        format.html { redirect_to assigned_staff_type_url(@assigned_staff_type), notice: "Assigned staff type was successfully updated." }
        format.json { render :show, status: :ok, location: @assigned_staff_type }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assigned_staff_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_staff_types/1 or /assigned_staff_types/1.json
  def destroy
    @assigned_staff_type.destroy!

    respond_to do |format|
      format.html { redirect_to assigned_staff_types_url, notice: "Assigned staff type was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_staff_type
      @assigned_staff_type = AssignedStaffType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assigned_staff_type_params
      params.require(:assigned_staff_type).permit(:type, :active)
    end
end
