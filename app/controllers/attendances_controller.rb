class AttendancesController < ApplicationController
  before_action :set_attendance, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]
  #26/11^

  # GET /attendances or /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1 or /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    # @attendance = Attendance.new
    #26/11^v
    @attendance = current_user.attendances.build
  end

  # Mark from students list 27/11

  def mark_all
    #render html: "Testing from app/controllers/attendances_controller.rb#mark"
    # Look in views/attendances/mark.html.erb for the view part
    @students = User.student
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances or /attendances.json
  def create
    #@attendance = Attendance.new(attendance_params)
    @attendance = current_user.attendances.build(attendance_params)

    respond_to do |format|
      if @attendance.save
        format.html { redirect_to @attendance, notice: "Attendance was successfully created." }
        format.json { render :show, status: :created, location: @attendance }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /attendances/1 or /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: "Attendance was successfully updated." }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /attendances/1 or /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: "Attendance was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user #26/11
    @attendance = current_user.attendances.find_by(id: params[:id])
    redirect_to attendances_path, notice: "Not authorised to edit this attendance" if @attendance.nil?
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_attendance
    @attendance = Attendance.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def attendance_params
    params.require(:attendance).permit(:date, :slot, :faculty_id, :subject_id, :student_id)
  end
end
