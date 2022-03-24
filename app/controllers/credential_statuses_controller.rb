class CredentialStatusesController < ApplicationController
  before_action :set_credential_status, only: %i[ show edit update destroy ]

  # GET /credential_statuses or /credential_statuses.json
  def index
    @credential_statuses = CredentialStatus.all
  end

  # GET /credential_statuses/1 or /credential_statuses/1.json
  def show
  end

  # GET /credential_statuses/new
  def new
    @credential_status = CredentialStatus.new
  end

  # GET /credential_statuses/1/edit
  def edit
  end

  # POST /credential_statuses or /credential_statuses.json
  def create
    @credential_status = CredentialStatus.new(credential_status_params)

    respond_to do |format|
      if @credential_status.save
        format.html { redirect_to credential_status_url(@credential_status), notice: "Credential status was successfully created." }
        format.json { render :show, status: :created, location: @credential_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @credential_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credential_statuses/1 or /credential_statuses/1.json
  def update
    respond_to do |format|
      if @credential_status.update(credential_status_params)
        format.html { redirect_to credential_status_url(@credential_status), notice: "Credential status was successfully updated." }
        format.json { render :show, status: :ok, location: @credential_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @credential_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credential_statuses/1 or /credential_statuses/1.json
  def destroy
    @credential_status.destroy

    respond_to do |format|
      format.html { redirect_to credential_statuses_url, notice: "Credential status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credential_status
      @credential_status = CredentialStatus.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def credential_status_params
      params.require(:credential_status).permit(:status, :credential_id)
    end
end
