class Plan < ApplicationRecord
  belongs_to :user
  belongs_to :subject_tag
  has_many :teachingfiles, dependent: :destroy

  validates_presence_of :p_name
end
