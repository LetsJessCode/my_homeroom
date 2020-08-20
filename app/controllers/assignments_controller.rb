class AssignmentsController < ApplicationController
    before_action :set_assign, except: [:index, :new, :create]

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
   end
   
   def edit
   end

   def update
    if @assignment.update(assign_params)
        redirect_to assignment_path(@assignment) # /books/5
      else
        render :edit
      end
   end

   def destroy # delete /books/:id
    @assignment.destroy
    redirect_to assignments_path
  end

  private
   def assign_params
    params.require(:assignment).permit(:title, :date, :completed, :subject, :question,
    student_attributes: [:name, :grade],
    subject_attributes: [:name])
   end

   def set_assign
        @assignment = Assignment.find_by_id(params[:id])
   end

   def current_student
        @student = Student.find_by_id(params[:student_id])
   end

   def set_subject
        @subject = Subject.find_by_id(params[:subject_id])
   end
end
