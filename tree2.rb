class Node
  attr_accessor :payload, :children

  def initialize(payload, children)
    @payload = payload
    @children = children
  end

end


class Queue
	attr_accessor :elements

	def initialize()
		@elements = []
	end

	def push(data)
		@elements.push(data)
	end

	def pop()
		@elements.shift
	end

	def print
		@elements.each do |child|
			puts child
		end
	end

end


def bfs(node, search)
	
end


#queue test
queue = Queue.new()
queue.push(11)
queue.push(2)
queue.push(5)
#[11, 2, 5]
queue.print
puts "\n"
queue.pop()
#[2, 5]
queue.print

####
#creating nodes
deep_fifth_node = Node.new(5, [])
eleventh_node = Node.new(11, [])
fourth_node   = Node.new(4, [])

# The "Branches" of the tree
ninth_node = Node.new(9, [fourth_node])
sixth_node = Node.new(6, [deep_fifth_node, eleventh_node])
seventh_node = Node.new(7, [sixth_node])
shallow_fifth_node = Node.new(5, [ninth_node])

# The "Trunk" of the tree
trunk   = Node.new(2, [seventh_node, shallow_fifth_node])
puts dfs(trunk, 11)



