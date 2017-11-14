class WorkController < ApplicationController
    before_action :set_facility, only: [:facility, :facility_item]
    before_action :set_template, only: [:facility, :measure, :facility_item]
    before_action :set_facility_item, only: [:facility_item]
    def index 
        @selectedDate = DateTime.now.strftime("%F")
        @work = Template.joins(:schedulings).left_outer_joins(:facility).where("start_date <=? AND end_date >=?", @selectedDate, @selectedDate).select("facilities.name as f_name, facilities.id as f_id,templates.id, templates.name as t_name").distinct
    end

    def facility        
    end

    def facility_item        
    end
    
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_facility
        @facility = Facility.find(params[:facility_id])
    end

    def set_template
        @template = Template.find(params[:template_id])
    end

    def set_facility_item
        @facility_item = FacilityItem.find(params[:facility_item_id])
    end
end
