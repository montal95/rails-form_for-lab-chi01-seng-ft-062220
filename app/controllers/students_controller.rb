class StudentsController < ApplicationController
    def create
        @student = Student.new
        @student.first_name = params[:student_first_name]
        @student.last_name = params[:student_last_name]
        @student.save
        redirect_to student_path(@student)
    end

    def new
    end

    def show
        @student = Student.find(params[:id])
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        @student.update(params.require(:student).permit(:first_name, :last_name))
        redirect_to student_path(@student)
    end
end 