class StatusCodesController < ApplicationController
  before_action :set_status_code, only: [:show, :edit, :update, :destroy]

  # GET /status_codes
  # GET /status_codes.json
  def index
    @status_codes = StatusCode.all
  end

  # GET /status_codes/1
  # GET /status_codes/1.json
  def show
  end

  # GET /status_codes/new
  def new
    @status_code = StatusCode.new
  end

  # GET /status_codes/1/edit
  def edit
  end

  # POST /status_codes
  # POST /status_codes.json
  def create
    @status_code = StatusCode.new(status_code_params)

    respond_to do |format|
      if @status_code.save
        format.html { redirect_to @status_code, notice: 'Status code was successfully created.' }
        format.json { render :show, status: :created, location: @status_code }
      else
        format.html { render :new }
        format.json { render json: @status_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_codes/1
  # PATCH/PUT /status_codes/1.json
  def update
    respond_to do |format|
      if @status_code.update(status_code_params)
        format.html { redirect_to @status_code, notice: 'Status code was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_code }
      else
        format.html { render :edit }
        format.json { render json: @status_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_codes/1
  # DELETE /status_codes/1.json
  def destroy
    @status_code.destroy
    respond_to do |format|
      format.html { redirect_to status_codes_url, notice: 'Status code was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_code
      @status_code = StatusCode.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def status_code_params
      params.require(:status_code).permit(:status)
    end
end
