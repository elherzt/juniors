class CookieTypesController < ApplicationController
  before_action :set_cookie_type, only: [:show, :edit, :update, :destroy]

  # GET /cookie_types
  # GET /cookie_types.json
  def index
    @cookie_types = CookieType.all
  end

  # GET /cookie_types/1
  # GET /cookie_types/1.json
  def show
  end

  # GET /cookie_types/new
  def new
    @cookie_type = CookieType.new
  end

  # GET /cookie_types/1/edit
  def edit
  end

  # POST /cookie_types
  # POST /cookie_types.json
  def create
    @cookie_type = CookieType.new(cookie_type_params)

    respond_to do |format|
      if @cookie_type.save
        format.html { redirect_to @cookie_type, notice: 'Cookie type was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cookie_type }
      else
        format.html { render action: 'new' }
        format.json { render json: @cookie_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cookie_types/1
  # PATCH/PUT /cookie_types/1.json
  def update
    respond_to do |format|
      if @cookie_type.update(cookie_type_params)
        format.html { redirect_to @cookie_type, notice: 'Cookie type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cookie_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cookie_types/1
  # DELETE /cookie_types/1.json
  def destroy
    @cookie_type.destroy
    respond_to do |format|
      format.html { redirect_to cookie_types_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cookie_type
      @cookie_type = CookieType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cookie_type_params
      params.require(:cookie_type).permit(:name, :price)
    end
end
