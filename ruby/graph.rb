class Graph
  attr_accessor :array
  
  def initialize
    @array = []
   end
   
   def vertices(number)
     i = 0
     while i < number
       array.push([])
       i = i+1
     end
   end
   
   def edge(source, destination)
     array[source].push(destination)
     array[destination].push(source)
   end
   
   def printArray
     i = 0
     array.each do |a|
       print i.to_s + " : "
       i = i + 1
       puts a.inspect
     end
   end
   
   def printDegree(vertex)
     size = array[vertex].size
     puts "The degree of vertext #{vertex} is #{size}"
   end
   
   def printMaxDegree
     max = 0
     i = 0
     while i < array.size
       if array[i].size > max
         max = array[i].size
       end
       i = i+1
     end
     puts "The maximum degree is #{max}"
   end
   
   def edge?(vertex1, vertex2)
     if array[vertex1].member?(vertex2) && array[vertex2].member?(vertex1)
       puts "(#{vertex1},#{vertex2}) is an edge."
       true
     else
       puts "(#{vertex1},#{vertex2}) is not an edge."
       false
     end
   end
   
end

g = Graph.new()

g.vertices 5

g.edge 0, 1
g.edge 1, 2
g.edge 2, 4
g.edge 1, 3
g.edge 2, 3

g.printArray
g.printDegree 2
g.printArray
g.printMaxDegree

g.edge? 3, 4
g.edge? 2, 3
         
   
  