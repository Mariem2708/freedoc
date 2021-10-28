require "test_helper"

class PatientTest < ActiveSupport::TestCase
  has_many :appointments
  has_many :doctors, through: :appointments
  has_many :cities
  has_many :doctors, through: :cities
  has_many :appointments, through: :cities
  has_many : specialties
end
