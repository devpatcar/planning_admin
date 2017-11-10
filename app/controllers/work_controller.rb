class WorkController < ApplicationController
    before_action :set_facility, only: [:facility]
    before_action :set_template, only: [:measure]
    def index 
        @work = Template.joins(:schedulings, :facility).select("facilities.name as f_name, facilities.id, templates.name").distinct.where("start_date <?", DateTime.now)   
    end

    def facility
        @templates = Template.joins(:schedulings).where("start_date <?", DateTime.now)        
    end

    def measure
        
    end

    def facility_items
        
    end

    def protocol
       
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
      @facility = Facility.find(params[:facility_id])
    end

    def set_template
        @template = Template.find(params[:template_id])
      end

end
