class Inquiry < ApplicationRecord
  validates :text, presence: true
  validates :reference_number, presence: true
  validates :invoice_number, presence: true
  validates :customer_email, presence: true
end
