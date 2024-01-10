class AssignedStaffsController < ApplicationController
  before_action :set_assigned_staff, only: %i[ show edit update destroy ]

  # GET /assigned_staffs or /assigned_staffs.json
  def index
    @assigned_staffs = AssignedStaff.all
  end

  # GET /assigned_staffs/1 or /assigned_staffs/1.json
  def show
  end

  # GET /assigned_staffs/new
  def new
    @assigned_staff = AssignedStaff.new
  end

  # GET /assigned_staffs/1/edit
  def edit
  end

  # POST /assigned_staffs or /assigned_staffs.json
  def create
    @assigned_staff = AssignedStaff.new(assigned_staff_params)

    respond_to do |format|
      if @assigned_staff.save
        format.html { redirect_to assigned_staff_url(@assigned_staff), notice: "Assigned staff was successfully created." }
        format.json { render :show, status: :created, location: @assigned_staff }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @assigned_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assigned_staffs/1 or /assigned_staffs/1.json
  def update
    respond_to do |format|
      if @assigned_staff.update(assigned_staff_params)
        format.html { redirect_to assigned_staff_url(@assigned_staff), notice: "Assigned staff was successfully updated." }
        format.json { render :show, status: :ok, location: @assigned_staff }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @assigned_staff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assigned_staffs/1 or /assigned_staffs/1.json
  def destroy
    @assigned_staff.destroy!

    respond_to do |format|
      format.html { redirect_to assigned_staffs_url, notice: "Assigned staff was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assigned_staff
      @assigned_staff = AssignedStaff.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def assigned_staff_params
      params.require(:assigned_staff).permit(:first_name, :last_name, :active, :assigned_staff_type_id)
    end
end
