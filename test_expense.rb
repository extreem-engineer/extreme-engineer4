require 'test/unit'
require_relative 'departure_station'
require_relative 'destination_station'

class TestExpense < Test::Unit::TestCase
	def test_deptname
		dept = DepartureStation.new("Shinagawa")
		assert_equal("Shinagawa",dept.name)
	end

	def test_destname
		dest = DestinationStation.new("Shinjuku")
		assert_equal("Shinjuku" ,dest.name)
	end
end