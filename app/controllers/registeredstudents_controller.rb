class RegisteredstudentsController < ApplicationController
  before_action :set_registeredstudent, only: %i[ show edit update destroy ]

  # GET /registeredstudents or /registeredstudents.json
  def index
    @registeredstudents = Registeredstudent.all
  end

  # GET /registeredstudents/1 or /registeredstudents/1.json
  def show
  end

  # GET /registeredstudents/new
  def new
    @registeredstudent = Registeredstudent.new
  end

  # GET /registeredstudents/1/edit
  def edit
  end

  # POST /registeredstudents or /registeredstudents.json
  def create
    @registeredstudent = Registeredstudent.new(registeredstudent_params)

    respond_to do |format|
      if @registeredstudent.save
        format.html { redirect_to @registeredstudent, notice: "Registeredstudent was successfully created." }
        format.json { render :show, status: :created, location: @registeredstudent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @registeredstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registeredstudents/1 or /registeredstudents/1.json
  def update
    respond_to do |format|
      if @registeredstudent.update(registeredstudent_params)
        format.html { redirect_to @registeredstudent, notice: "Registeredstudent was successfully updated." }
        format.json { render :show, status: :ok, location: @registeredstudent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @registeredstudent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registeredstudents/1 or /registeredstudents/1.json
  def destroy
    @registeredstudent.destroy
    respond_to do |format|
      format.html { redirect_to registeredstudents_url, notice: "Registeredstudent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registeredstudent
      @registeredstudent = Registeredstudent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def registeredstudent_params
      params.require(:registeredstudent).permit(:first_name, :last, :name, :contact, :branch, :book_availed, :exceeded_duration)
    end
end
