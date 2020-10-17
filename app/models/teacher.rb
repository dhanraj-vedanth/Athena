class Teacher < User
    has_many :tregistrations
    has_many :courses, through: :tregistrations
end
