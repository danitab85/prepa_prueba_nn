class Project < ApplicationRecord
  has_many :assignments, dependent: :destroy
  has_many :people, through: :assignments
end
