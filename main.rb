require_relative 'lib/linkedlist'

list = LinkedList.new

list.append('dog')
list.append('cat')
list.append('parrot')
list.append('hamster')
list.append('snake')
list.append('turtle')
list.insert_at('lion',2)
list.remove_at(2)
puts list