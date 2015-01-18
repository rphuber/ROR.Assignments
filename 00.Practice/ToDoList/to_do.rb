require './todo_item'
require './todo_list'

todo_list = TodoList.new("Groceries")

todo_list.add_item("Milk")
todo_list.add_item("Eggs")
todo_list.add_item("Bread")
todo_list.add_item("Butter")


if todo_list.remove_item("Eggs")
	puts "Eggs were removed from the list"
end


if todo_list.mark_complete("Bread")
	puts "Bread was marked as complete."
end

todo_list.print_list
todo_list.print_list('complete')
todo_list.print_list('incomplete')