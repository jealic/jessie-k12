class TopicFile < ApplicationRecord
  belongs_to :topic
  belongs_to :teachingfile
end
