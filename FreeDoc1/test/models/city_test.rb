require "test_helper"

class CityTest < ActiveSupport::TestCase
  belongs_to :doctor
  belongs_to :patient
  belongs_to :appointment
end
