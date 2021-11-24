class FacultySubjectsController < ApplicationController
  before_action :set_faculty_subject, only: %i[ show edit update destroy ]

  # GET /faculty_subjects or /faculty_subjects.json
  def index
    @faculty_subjects = FacultySubject.all
  end

  # GET /faculty_subjects/1 or /faculty_subjects/1.json
  def show
  end

  # GET /faculty_subjects/new
  def new
    @faculty_subject = FacultySubject.new
  end

  # GET /faculty_subjects/1/edit
  def edit
  end

  # POST /faculty_subjects or /faculty_subjects.json
  def create
    @faculty_subject = FacultySubject.new(faculty_subject_params)

    respond_to do |format|
      if @faculty_subject.save
        format.html { redirect_to @faculty_subject, notice: "Faculty subject was successfully created." }
        format.json { render :show, status: :created, location: @faculty_subject }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @faculty_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faculty_subjects/1 or /faculty_subjects/1.json
  def update
    respond_to do |format|
      if @faculty_subject.update(faculty_subject_params)
        format.html { redirect_to @faculty_subject, notice: "Faculty subject was successfully updated." }
        format.json { render :show, status: :ok, location: @faculty_subject }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @faculty_subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faculty_subjects/1 or /faculty_subjects/1.json
  def destroy
    @faculty_subject.destroy
    respond_to do |format|
      format.html { redirect_to faculty_subjects_url, notice: "Faculty subject was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_faculty_subject
      @faculty_subject = FacultySubject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def faculty_subject_params
      params.require(:faculty_subject).permit(:faculty_id, :subject_id)
    end
end
