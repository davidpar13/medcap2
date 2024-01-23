class PatientsController < ApplicationController
  before_action :set_patient, only: %i[ edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.all.decorate
  end

  # GET /patients/1 or /patients/1.json
  def show
    @patient = Patient.includes([legal_guardians: :relationship]).find(params[:id]).decorate
    @admission = @patient.admissions.active_admissions.first
    @admission = Admission.new unless @admission.present?
  end

  # GET /patients/new
  def new
    @patient = Patient.new
  end

  # GET /patients/1/edit
  def edit
  end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)

    respond_to do |format|
      if @patient.save
        format.html { redirect_to patients_path, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to patients_path, notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to patients_url, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id]).decorate
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:mrn, :first_name, :last_name, :middle_initial, :date_of_birth, :phone, :email, :deceased, :terminated, :language_id, :sex_id,
                                      legal_guardians_attributes: [:id, :_destroy, :first_name, :last_name, :middle_initial, :date_of_birth, :phone, :email, :relationship_id],
                                      admissions_attributes: [:id, :admitted_date, :notes, :discharge_date, :diagnosis_id, :assigned_staff_id])
    end
end
