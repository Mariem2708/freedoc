require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  belongs_to :doctor
  belongs_to :patient
  has_many :cities
  has_many :patients, through: :cities
  has many :doctors, through: :cities

end
