class FacilityItemsController < ApplicationController
  before_action :set_facility_item, only: [:show, :edit, :update, :destroy] 
  before_action :set_facility, only: [:index,:show, :new, :edit]
  # GET /facility_items
  # GET /facility_items.json
  def index
    @facility_items = FacilityItem.where(facility_id: @facility.id).order(:name).page params[:page]   
  end

  # GET /facility_items/1
  # GET /facility_items/1.json
  def show
  end

  # GET /facility_items/new
  def new
    @facility_item = FacilityItem.new(facility_params)   
  end

  # GET /facility_items/1/edit
  def edit
  end

  # POST /facility_items
  # POST /facility_items.json
  def create
    @facility_item = FacilityItem.new(facility_item_params)

    respond_to do |format|
      if @facility_item.save
        format.html { redirect_to facility_facility_items_path(@facility_item.facility_id), notice: 'Facility item was successfully created.' }
        format.json { render :show, status: :created, location: @facility_item }
      else
        format.html { render :new }
        format.json { render json: @facility_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /facility_items/1
  # PATCH/PUT /facility_items/1.json
  def update
    respond_to do |format|
      if @facility_item.update(facility_item_params)
        format.html { redirect_to facility_facility_items_path(@facility_item.facility_id), notice: 'Facility item was successfully updated.' }
        format.json { render :show, status: :ok, location: @facility_item }
      else
        format.html { render :edit }
        format.json { render json: @facility_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /facility_items/1
  # DELETE /facility_items/1.json
  def destroy
    @facility_item.destroy
    respond_to do |format|
      format.html { redirect_to facility_facility_items_path(facility_params), notice: 'Facility item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility_item
      @facility_item = FacilityItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def facility_item_params
      params.require(:facility_item).permit(:name, :facility_id)
    end

    def facility_params
      params.permit(:facility_id)
    end

    def set_facility
      @facility = Facility.find(facility_params[:facility_id])
    end

end
