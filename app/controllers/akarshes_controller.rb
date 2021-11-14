class AkarshesController < ApplicationController
  before_action :set_akarsh, only: %i[ show edit update destroy ]

  # GET /akarshes or /akarshes.json
  def index
    @akarshes = Akarsh.all
  end

  # GET /akarshes/1 or /akarshes/1.json
  def show
  end

  # GET /akarshes/new
  def new
    @akarsh = Akarsh.new
  end

  # GET /akarshes/1/edit
  def edit
  end

  # POST /akarshes or /akarshes.json
  def create
    @akarsh = Akarsh.new(akarsh_params)

    respond_to do |format|
      if @akarsh.save
        format.html { redirect_to @akarsh, notice: "Akarsh was successfully created." }
        format.json { render :show, status: :created, location: @akarsh }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @akarsh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /akarshes/1 or /akarshes/1.json
  def update
    respond_to do |format|
      if @akarsh.update(akarsh_params)
        format.html { redirect_to @akarsh, notice: "Akarsh was successfully updated." }
        format.json { render :show, status: :ok, location: @akarsh }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @akarsh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /akarshes/1 or /akarshes/1.json
  def destroy
    @akarsh.destroy
    respond_to do |format|
      format.html { redirect_to akarshes_url, notice: "Akarsh was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_akarsh
      @akarsh = Akarsh.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def akarsh_params
      params.require(:akarsh).permit(:title, :description)
    end
end
