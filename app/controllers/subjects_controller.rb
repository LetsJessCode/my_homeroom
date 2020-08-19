class SubjectsController < ApplicationController

    def new
        @subject = Subject.new
    end

    def create
        @subject = Subject.create(subject_params)
    end

    def index

    end

    def show

    end

    def edit

    end

    def update

    end

    def destroy

    end
end
