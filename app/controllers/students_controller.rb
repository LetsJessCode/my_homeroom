class StudentsController < ApplicationController
    ## user controller
    def new
        @student = Student.new
    end

    def index
        @students = Student.all
    end

    def show
        @student = Student_find_by_id(params[:id])
    end
end
