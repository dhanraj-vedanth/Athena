class HistoriesController < ApplicationController

    def show
        if current_student
            @histories = History.where(student_id: params[:id])
        end
        if current_teacher
            @histories = History.where(teacher_id: params[:id])
        end
    end
end
