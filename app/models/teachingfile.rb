class Teachingfile < ApplicationRecord
  has_many :topics, through: :topic_files
  has_many :topic_files

  belongs_to :plan, optional: true
  belongs_to :material, optional: true
end
