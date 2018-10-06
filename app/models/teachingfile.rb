class Teachingfile < ApplicationRecord
  has_many :topics, through: :topic_files
  has_many :topic_files
end
