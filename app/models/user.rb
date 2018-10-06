class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :lessons, dependent: :destroy
  has_many :todos, dependent: :destroy
  has_many :materials, dependent: :destroy
  has_many :plans, dependent: :destroy

  validates_presence_of :name

  def admin?
    self.role == "admin"
  end
end
