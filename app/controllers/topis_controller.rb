class TopisController < ApplicationController
  before_action :set_topi, only: [:show, :edit, :update, :destroy]

  # GET /topis
  # GET /topis.json
  def index
    @topis = Topi.all
  end

  # GET /topis/1
  # GET /topis/1.json
  def show
  end

  # GET /topis/new
  def new
    @topi = Topi.new
  end

  # GET /topis/1/edit
  def edit
  end

  # POST /topis
  # POST /topis.json
  def create
    @topi = Topi.new(topi_params)

    respond_to do |format|
      if @topi.save
        format.html { redirect_to @topi, notice: 'Topi was successfully created.' }
        format.json { render :show, status: :created, location: @topi }
      else
        format.html { render :new }
        format.json { render json: @topi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /topis/1
  # PATCH/PUT /topis/1.json
  def update
    respond_to do |format|
      if @topi.update(topi_params)
        format.html { redirect_to @topi, notice: 'Topi was successfully updated.' }
        format.json { render :show, status: :ok, location: @topi }
      else
        format.html { render :edit }
        format.json { render json: @topi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topis/1
  # DELETE /topis/1.json
  def destroy
    @topi.destroy
    respond_to do |format|
      format.html { redirect_to topis_url, notice: 'Topi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_topi
      @topi = Topi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def topi_params
      params.require(:topi).permit(:title, :description)
    end
end
