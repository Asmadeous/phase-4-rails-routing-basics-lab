class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end
    
    def highest_grade
        students = Student.find_by(grade: Student.maximum(:grade))
        render json: students
    end
end
