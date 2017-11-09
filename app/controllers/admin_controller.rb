class AdminController < ApplicationController
    def index
       @date = DateTime.now.strftime("%Y-%d-%m")
       @work = Scheduling.where("start_date < ?", DateTime.now).where("end_date > ?", DateTime.now)                 
       @finished = Protocol.where(completed: true).count               
    end
end
