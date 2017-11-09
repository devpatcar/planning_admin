class WorkController < ApplicationController
    def index
        @facilities = Facility.where().order(:name).page params[:page]        
        @templates = Template.joins(:schedulings).where("start_date <?", DateTime.now)        
    end

    def facility
        @templates = Template.joins(:schedulings).where("start_date <?", DateTime.now)
    end

    def measure
        @facility_items = Template.joins(:schedulings).where("start_date <?", DateTime.now)
    end

    def facility_items
        @protocols = Template.joins(:schedulings).where("start_date <?", DateTime.now)
    end

    def protocol
        @protocol = Template.joins(:schedulings).where("start_date <?", DateTime.now)
    end    
end
