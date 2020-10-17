class Student < User
    # has_one :cart, dependent: :destroy
    has_many :sregistrations
    has_many :courses, through: :sregistrations
    validates :cc_number, length: { minimum: 16 }
end
