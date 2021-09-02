class StudentsregisteredsController < ApplicationController
  before_action :set_studentsregistered, only: %i[ show edit update destroy ]

  # GET /studentsregistereds or /studentsregistereds.json
  def index
    @studentsregistereds = Studentsregistered.all
  end

  # GET /studentsregistereds/1 or /studentsregistereds/1.json
  def show
  end

  # GET /studentsregistereds/new
  def new
    @studentsregistered = Studentsregistered.new
  end

  # GET /studentsregistereds/1/edit
  def edit
  end

  # POST /studentsregistereds or /studentsregistereds.json
  def create
    @studentsregistered = Studentsregistered.new(studentsregistered_params)

    respond_to do |format|
      if @studentsregistered.save
        format.html { redirect_to @studentsregistered, notice: "Studentsregistered was successfully created." }
        format.json { render :show, status: :created, location: @studentsregistered }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @studentsregistered.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studentsregistereds/1 or /studentsregistereds/1.json
  def update
    respond_to do |format|
      if @studentsregistered.update(studentsregistered_params)
        format.html { redirect_to @studentsregistered, notice: "Studentsregistered was successfully updated." }
        format.json { render :show, status: :ok, location: @studentsregistered }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @studentsregistered.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studentsregistereds/1 or /studentsregistereds/1.json
  def destroy
    @studentsregistered.destroy
    respond_to do |format|
      format.html { redirect_to studentsregistereds_url, notice: "Studentsregistered was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studentsregistered
      @studentsregistered = Studentsregistered.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def studentsregistered_params
      params.require(:studentsregistered).permit(:first_name, :last_name, :branch, :contact, :book_availed, :exceeded_duration)
    end
end
