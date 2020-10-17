class Course < ApplicationRecord 
    before_destroy :not_referenced_by_any_line_item
    belongs_to :admin
    has_many :sregistrations
    has_many :students, through: :sregistrations
    has_many :tregistrations
    has_many :teachers, through: :tregistrations
    has_many :line_items
    # validates :name, :course_no, :discipline, :area, :price, presence: true
    
    private

    def not_referenced_by_any_line_item
        unless line_items.empty?
            errors.add(:base, "line items present")
            throw :abort
        end
    end
end
