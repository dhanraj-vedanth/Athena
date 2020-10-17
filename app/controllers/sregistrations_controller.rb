class SregistrationsController < ApplicationController
    def show
        @student = Student.find(params[:id])
    end

    def create
        @cart = Cart.find_by(:id => session[:cart_id])
        @cart.line_items.each do |lineItem|
            #sreg = Sregistration.create(lineItem.student_id, lineItem.teacher_id, lineItem.course_id)
            @student = Student.find(lineItem.student_id)
            @course = Course.find(lineItem.course_id)
            @teacher = Teacher.find(lineItem.teacher_id)
            @student.courses << @course
            @history = History.create(
                student_id: @student.id,
                teacher_id: @teacher.id,
                course_id: @course.id,
                student_name: @student.name,
                teacher_name: @teacher.name,
                course_name: @course.name
            )
            @feedback = Feedback.create(
                student_id: @student.id,
                teacher_id: @teacher.id,
                course_id: @course.id,
                student_name: @student.name,
                teacher_name: @teacher.name,
                course_name: @course.name,
                review: "None"
            )    
        end
        @cart.destroy

        flash.notice = "Successfully purchased the courses!"
        redirect_to root_path
        # student_id = params[:student_id]
        # course_id = params[:course_id]
        # @student = Student.find(student_id)
        # @course = Course.find(course_id)
        # if @student.courses.length() != nil
        #     if @student.courses.include? @course
        #         flash.notice = "Already Registered for this course!"
        #         redirect_to root_path
        #     else
        #         if @student.courses << @course
        #             flash.notice = "Successfully Registered for the course!"
        #             redirect_to root_path
        #         else
        #             flash.notice = "Unable to register at the moment, try again later!"
        #             redirect_to root_path
        #         end
        #     end
        # end
    end

    def destroy
        @student = Student.find(params[:student_id])
        @course = Course.find(params[:course_id])

        @student.courses.destroy(@course)
        flash.notice = "#{@course.name} was de-registered for #{@student.name}"
        redirect_to root_path
    end
end
