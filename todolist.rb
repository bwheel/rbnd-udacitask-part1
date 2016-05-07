class TodoList
    
    def initialize(title)
      @title = title
      @item_list = []      
    end
    
    def add_item(item)
      # TODO: create item class object from parameter.
      @item_list.push(item)
    end
    
    def remove_item(item)
      @item_list.delete item
    end
    
    def remove_item_at(index)
      @item_list.delete_at (index-1)
    end
    
    def print_all_items
      
      puts "TODO list: #{@title}"
      
      @item_list.each do |item|
        item.print_details
      end
    end
    
    def update_item_at(index, val)
      @item_list[(index - 1)].update_satus(val)
    end
    
end

class Item
  
  @@item_count = 0

  attr_reader :id
  
  def initialize(description)
    @@item_count += 1
    
    @completion_status = false
    @id = @@item_count
    @description = description
  end
  
  def update_satus(status)
    @completion_status = status
  end
  
  def print_details
    puts "Item(#{@id}): #{@description} completion status is #{@completion_status}"
  end
  
  def equals(item)
    @id = item.id
  end
end
