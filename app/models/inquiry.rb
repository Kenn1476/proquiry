class Inquiry < ApplicationRecord
  validates :text, presence: true
end
