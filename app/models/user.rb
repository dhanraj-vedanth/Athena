class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: true
  validates :phone_number, length: { minimum: 10 }

         
  
  def is_admin?
    self.type == 'Admin'
  end
  def is_student?
    self.type == 'Student'
  end
  def is_teacher?
    self.type == 'Teacher'
  end

  scope :teachers, -> { where(type: 'Teacher')}
  scope :students, -> { where(type: 'Student')}
  scope :admin, -> { where(type: 'Admin')}
  
end
