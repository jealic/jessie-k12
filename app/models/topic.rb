class Topic < ApplicationRecord
  belongs_to :lesson
  has_many :teachingfiles, through: :topic_files
  has_many :topic_files
  has_many :aims, dependent: :destroy
end
