class Fare
   attr_accessor :fare, :dept, :dest

   def initialize(fare,dept,dest)
      @fare = fare
      @dept = dept
      @dest = dest
   end
end