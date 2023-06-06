class UserrsController < ApplicationController
  before_action :set_userr, only: %i[ show edit update destroy ]

  # GET /userrs or /userrs.json
  def index
    @userrs = Userr.all
  end

  # GET /userrs/1 or /userrs/1.json
  def show
  end

  # GET /userrs/new
  def new
    @userr = Userr.new
  end

  # GET /userrs/1/edit
  def edit
  end

  # POST /userrs or /userrs.json
  def create
    @userr = Userr.new(userr_params)

    respond_to do |format|
      if @userr.save
        format.html { redirect_to userr_url(@userr), notice: "Userr was successfully created." }
        format.json { render :show, status: :created, location: @userr }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userrs/1 or /userrs/1.json
  def update
    respond_to do |format|
      if @userr.update(userr_params)
        format.html { redirect_to userr_url(@userr), notice: "Userr was successfully updated." }
        format.json { render :show, status: :ok, location: @userr }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @userr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userrs/1 or /userrs/1.json
  def destroy
    @userr.destroy

    respond_to do |format|
      format.html { redirect_to userrs_url, notice: "Userr was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userr
      @userr = Userr.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def userr_params
      params.require(:userr).permit(:name, :email, :login)
    end
end
