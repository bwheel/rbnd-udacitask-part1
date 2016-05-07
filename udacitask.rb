require_relative 'todolist_starter.rb'

# Creates a new todo list
todo_list = TodoList.new("My first todo list.")

# Add four new items
item1 = Item.new("My first item.")
item2 = Item.new("My second item.")
item3 = Item.new("My third item.")
item4 = Item.new("My fourth item.")

todo_list.add_item(item1)
todo_list.add_item(item2)
todo_list.add_item(item3)
todo_list.add_item(item4)

# Print the list
todo_list.print_all_items

# Delete the first item
todo_list.remove_item(item1)

# Print the list
todo_list.print_all_items

# Delete the second item
todo_list.remove_item_at(2)

# Print the list
todo_list.print_all_items

# Update the completion status of the first item to complete
todo_list.update_item_at 1, true


# Print the list
todo_list.print_all_items

# Update the title of the list
todo_list.update_item_at 2, true

# Print the list
todo_list.print_all_items
