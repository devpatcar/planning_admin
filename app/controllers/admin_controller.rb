class AdminController < ApplicationController
    def index
       @date = DateTime.now.strftime("%Y-%d-%m")
       @work = Scheduling.where(start_date: DateTime.now) 
       for item in @work do
        @facility_items = FacilityItem.where(template_id: item.template_id)   
       end              
       @finished = Protocol.where(completed: true).count               
    end
end
