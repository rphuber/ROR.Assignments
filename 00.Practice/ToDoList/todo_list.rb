class TodoList
	attr_reader :name, :todo_items

	def initialize name
		@name = name 
		@todo_items = []
	end

	def add_item name
		todo_items.push(TodoItem.new(name))
	end

	def remove_item name
		if index = find_index(name)
			todo_items.delete_at(index)
			return true
		else 
			return false
		end		
	end

	def mark_complete name
		if index = find_index(name)
			todo_items[index].mark_complete!
			return true
		else 
			return false
		end	
	end

	def find_index name
		index = 0
		found = false

		todo_items.each do |todo_item|
			if todo_item.name == name 
				found = true
			end
			if found
				break
			else
				index += 1
			end
		end
		if found
			return index
		else 
			return nil
		end	
	end

	def print_list	kind='all'
		puts "#{name} List - #{kind} items"
		puts "-" * 30
		todo_items.each do |todo_item|
			case kind
			when 'all'
				puts todo_item
			when 'complete'
				puts todo_item if todo_item.complete?
			when 'incomplete'
				puts todo_item unless todo_item.complete?
			end
		end
		puts "\n"
	end
end
