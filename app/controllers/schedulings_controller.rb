class SchedulingsController < ApplicationController
  before_action :set_scheduling, only: [:show, :edit, :update, :destroy]
  before_action :set_template, only: [:index,:show, :new, :edit]
  # GET /schedulings
  # GET /schedulings.json
  def index
    @schedulings = Scheduling.all
  end

  # GET /schedulings/1
  # GET /schedulings/1.json
  def show
  end

  # GET /schedulings/new
  def new
    @scheduling = Scheduling.new
    @scheduling.template_id = @template.id
  end

  # GET /schedulings/1/edit
  def edit
  end

  # POST /schedulings
  # POST /schedulings.json
  def create
    @scheduling = Scheduling.new(scheduling_params)

    respond_to do |format|
      if @scheduling.save
        format.html { redirect_to '/templates/'+@scheduling.template_id.to_s+'/schedulings', notice: 'Scheduling was successfully created.' }
        format.json { render :show, status: :created, location: @scheduling }
      else
        format.html { render :new }
        format.json { render json: @scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /schedulings/1
  # PATCH/PUT /schedulings/1.json
  def update
    respond_to do |format|
      if @scheduling.update(scheduling_params)
        format.html { redirect_to '/templates/'+@scheduling.template_id.to_s+'/schedulings', notice: 'Scheduling was successfully updated.' }
        format.json { render :show, status: :ok, location: @scheduling }
      else
        format.html { render :edit }
        format.json { render json: @scheduling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /schedulings/1
  # DELETE /schedulings/1.json
  def destroy
    @scheduling.destroy
    respond_to do |format|
      format.html { redirect_to '/templates/'+@scheduling.template_id.to_s+'/schedulings', notice: 'Scheduling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scheduling
      @scheduling = Scheduling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scheduling_params
      params.require(:scheduling).permit(:name, :template_id, :start_date, :end_date, :monday, :thuesday, :wendsday, :thursday, :friday, :saturday, :sunday, :week_duration, :delay, :notification)
    end

    def template_params
      params.permit(:template_id)
    end

    def set_template
      if template_params[:template_id]
        @template = Template.find(template_params[:template_id]) 
      end     
    end
end
