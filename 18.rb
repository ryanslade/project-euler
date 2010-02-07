class Solver

  def self.get_routes(triangle, routes, current_route=[], level=0, position=0)
    limit = triangle.length

    item = triangle[level][position]
    current_route << item
    unless level == limit-1
      get_routes(triangle, routes, current_route.clone, level+1, position)
      get_routes(triangle, routes, current_route.clone, level+1, position+1)
    else
      routes << current_route
    end

  end

end


input = File.new("18.txt", "r")
triangle = []
input.each_line { |line| triangle << line.split(" ").collect { |n| n.to_i } }
input.close

largest = 0
routes = []

Solver.get_routes(triangle, routes)

routes.each do |route|
  total = route.inject(0) { |m, v| m+v }
  largest = total if total > largest
end

puts largest