require 'singleton'
class Graph
  include Singleton
  attr_accessor :array, :name
  
  def create name
    @name = name
    @array = []
   end
   
   def vertices number
     i = 0
     while i < number
       array.push([])
       i = i+1
     end
   end
   
   def edge source, destination
     if source >= array.size or destination >= array.size
       puts "The edge could not be created because it doesn't exist in the graph."
       return
     end
     array[source].push(destination)
     array[destination].push(source)
   end
   
   def printArray
     puts "Array: #{name}"
     i = 0
     array.each do |a|
       print i.to_s + " : "
       i = i + 1
       puts a.inspect
     end
   end
   
   def printDegree vertex
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
   
   def edge? vertex1, vertex2
     if array[vertex1].member?(vertex2) && array[vertex2].member?(vertex1)
       puts "(#{vertex1},#{vertex2}) is an edge."
       true
     else
       puts "(#{vertex1},#{vertex2}) is not an edge."
       false
     end
   end
   
   def inTriangle? vertex1, vertex2
     common = (array[vertex1] & array[vertex2])
     if common.any?
       puts "Vertex #{common} completes a triangle with #{vertex1} and #{vertex2}"
     else
       puts "No triangle contains #{vertex1} and #{vertex2}"
     end
   end
end

def graph name 
  Graph.instance.create name
end

def vertices number
  Graph.instance.vertices number
end

def edge vertex1, vertex2
  Graph.instance.edge vertex1, vertex2
end

def printArray
  Graph.instance.printArray
end

def printDegree vertex
  Graph.instance.printDegree vertex
end

def printMaxDegree
  Graph.instance.printMaxDegree
end

def edge? vertex1, vertex2
  Graph.instance.edge? vertex1, vertex2
end

def inTriangle? vertex1, vertex2
  Graph.instance.inTriangle? vertex1, vertex2
end

graph 'G'
vertices 5
edge 0, 1
edge 1, 2
edge 2, 4
edge 1, 3
edge 2, 3
printArray
printDegree 2
printArray
printMaxDegree
edge? 3,4
edge? 2,3
inTriangle? 1, 2
inTriangle? 0, 4