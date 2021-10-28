require "test_helper"

class DoctorTest < ActiveSupport::TestCase
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :cities
  has many :patients, through: :cities 
  has many :appointments, through: :cities
end
