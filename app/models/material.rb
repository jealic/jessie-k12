class Material < ApplicationRecord
  belongs_to :user
  has_many :teachingfiles
end
