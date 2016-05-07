require_relative 'todolist.rb'

# Creates a new todo list
todo_list = TodoList.new("My first todo list.")

# Add four new items

todo_list.add_item("My first item.")
todo_list.add_item("My second item.")
todo_list.add_item("My third item.")
todo_list.add_item("My fourth item.")

# Print the list
todo_list.print_all_items
puts

# Delete the first item
todo_list.remove_item_at 1

# Print the list
todo_list.print_all_items
puts

# Delete the second item
todo_list.remove_item_at 2

# Print the list
todo_list.print_all_items
puts

# Update the completion status of the first item to complete
todo_list.update_item_status_at 1, true


# Print the list
todo_list.print_all_items
puts

# Update the title of the list
todo_list.update_item_status_at 2, true

# Print the list
todo_list.print_all_items
puts
