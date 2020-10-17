class Cart < ApplicationRecord
    has_many :line_items, dependent: :destroy
    # belongs_to :student

    def add_course(course, teacher_id)
        current_item = line_items.find_by(course_id: course.id)
        
        current_item = line_items.build(course_id: course.id, teacher_id: teacher_id)
        
        current_item
    end

    def total_price
        line_items.to_a.sum {|item| item.total_price}
    end
end
