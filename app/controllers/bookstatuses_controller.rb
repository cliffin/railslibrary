class BookstatusesController < ApplicationController
  before_action :set_bookstatus, only: %i[ show edit update destroy ]

  # GET /bookstatuses or /bookstatuses.json
  def index
    @bookstatuses = Bookstatus.all
  end

  # GET /bookstatuses/1 or /bookstatuses/1.json
  def show
  end

  # GET /bookstatuses/new
  def new
    @bookstatus = Bookstatus.new
  end

  # GET /bookstatuses/1/edit
  def edit
  end

  # POST /bookstatuses or /bookstatuses.json
  def create
    @bookstatus = Bookstatus.new(bookstatus_params)

    respond_to do |format|
      if @bookstatus.save
        format.html { redirect_to @bookstatus, notice: "Bookstatus was successfully created." }
        format.json { render :show, status: :created, location: @bookstatus }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bookstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookstatuses/1 or /bookstatuses/1.json
  def update
    respond_to do |format|
      if @bookstatus.update(bookstatus_params)
        format.html { redirect_to @bookstatus, notice: "Bookstatus was successfully updated." }
        format.json { render :show, status: :ok, location: @bookstatus }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @bookstatus.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookstatuses/1 or /bookstatuses/1.json
  def destroy
    @bookstatus.destroy
    respond_to do |format|
      format.html { redirect_to bookstatuses_url, notice: "Bookstatus was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookstatus
      @bookstatus = Bookstatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookstatus_params
      params.require(:bookstatus).permit(:book_name, :available)
    end
end
