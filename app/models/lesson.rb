class Lesson < ApplicationRecord
  belongs_to :user
  has_many :topics

  validates_presence_of :name
  validates_presence_of :class_name
end
