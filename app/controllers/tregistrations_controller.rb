class TregistrationsController < ApplicationController 
    def show
        @teacher = Teacher.find(params[:id])
    end


    def create
        teacher_id = params[:teacher_id]
        course_id = params[:course_id]
        @teacher = Teacher.find(teacher_id)
        @course = Course.find(course_id)
        if @teacher.courses.length() != nil
            if @teacher.courses.include? @course
                flash.notice = "Already Registered for this course!"
                redirect_to root_path
            else
                if @teacher.courses << @course
                    flash.notice = "Successfully Registered for the course!"
                    redirect_to root_path
                else
                    flash.notice = "Unable to register at the moment, try again later!"
                    redirect_to root_path
                end
            end
        end
    end

    def destroy
        @teacher = Teacher.find(params[:teacher_id])
        @course = Course.find(params[:course_id])

        @teacher.courses.destroy(@course)
        flash.notice = "#{@course.name} was de-registered for #{@teacher.name}"
        redirect_to root_path
    end
end