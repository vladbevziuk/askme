class Pupil < ApplicationRecord
  validates :emails, presence: true, uniqueness: true
end
