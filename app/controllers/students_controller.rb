class StudentsController < ApplicationController
    before_action :set_student, except: [:index, :new, :create]
    ## user controller
    def new
        @student = Student.new
    end

    def index
        @students = Student.all
    end

    def show
        @student = Student.find_by_id(params[:id])
    end

    def edit

    end

  private

    def set_student
        @student = Student.find_by_id(params[:id])
    end 
end
