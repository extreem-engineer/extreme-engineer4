require_relative 'fare'

class FareTable
   def initialize()
      @fareTable = []
   end

   def add(fare)
      @fareTable << fare
   end
   def find_fare(dept,dest)
      fareFind = @fareTable.find {|fare|
         fare.dept == dept &&
         fare.dest == dest}
      return fareFind.fare
   end
end