require_relative 'node'

class LinkedList
  
  def initialize
    @head = Node.new #start the linkedlist with an empty node

  end

  def append(str) 
    current = @head

    if current.value == nil #if the head is empty, feel free to add data into it
      current.value = str
    else                    #otherwise, find the node with an empty pointer and point it to the new node
      while current.next_node != nil
        current = current.next_node
      end

      current.next_node = Node.new(str,nil)
    end
  end

  def pop
    pop_at = self.size
    current = self.at(pop_at-2) #jump to the 2nd last item, and trim the pointer off
    current.next_node = nil
  end

  def contains?(value)
    current = @head
    caught = false
    length = self.size

    length.times do
      if current.value == value
        caught = true
      end
      current = current.next_node
    end
    caught
  end

  def find(value)
    current = @head
    index = 0

    if self.contains?(value)
      while current.value != value
        current = current.next_node
        index += 1
      end
    else 
      index = nil
    end

    index
  end

  def prepend(str)
    current = @head

    # temp_value = current.value
    # temp_next_node = current.next_node

    new_node = Node.new(str,current)
    @head = new_node
  end

  def head
    current = @head
    current
  end

  def tail
    current = @head

    while current.next_node != nil
      current = current.next_node
    end

    current
  end

  def size
    current = @head
    size = 1

    while current.next_node != nil
      current = current.next_node
      size += 1
    end
    size
  end

  def at(index)
    current = @head

    index.times do 
      current = current.next_node
    end

    current
  end

  def to_s
    current = @head
    string = ""
    length = self.size

    length.times do
      string = "#{string}( #{current.value} ) -> "
      current = current.next_node
    end
    string = "#{string}nil"
    string
  end

end



# p list.at(1)
# p list.contains?('alligator')
# p list.contains?('alligator')
# p list.find('alligator')
# p list.pop
# p list.size
# p list.tail
# p list.head
# list.show_values