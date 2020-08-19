class AssignmentsController < ApplicationController

    def index
        @assignments = Assignment.all
    end

    def new
        @assignment = Assignment.new
    end

    def create
        @assignment = Assignment.create(assign_params)
        if @assignment.save
            redirect_to assignments_path
        else 
            render :new
        end
   end

   def show
    @assignment = Assignment.find_by_id(params[:id])
   end

  private
   def assign_params
    params.require(:assignment).permit(:title, :date, :completed, :subject, :question)
   end

end
