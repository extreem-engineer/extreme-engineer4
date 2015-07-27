require 'test/unit'
require_relative 'station'
require_relative 'departure_station'
require_relative 'destination_station'
require_relative 'destination_station'
require_relative 'fare'
require_relative 'fare_table'

class TestExpense < Test::Unit::TestCase
	def setup
		@dept = DepartureStation.new("Shinagawa")
		@dest = DestinationStation.new("Shinjuku")
		@fare = Fare.new(200,@dept,@dest)
	end
	def test_deptname
		assert_equal("Shinagawa",@dept.name)
	end

	def test_destname
		assert_equal("Shinjuku" ,@dest.name)
	end

	def test_fare
		assert_equal(200,@fare.fare)
	end

	def test_find_fare
		fareTable = FareTable.new
		fareTable.add(@fare)
		assert_equal(200,fareTable.find_fare(@dept,@dest))
	end
end