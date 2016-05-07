class TodoList
    
    attr_reader :title
    
    def initialize(title)
      @title = title
      @item_list = []      
    end
    
    def add_item(description)
      temp_item = Item.new description
      @item_list.push(temp_item)
      
    end
    
    def add_item_obj(item)
      @item_list.push(item)
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
    
    def update_item_status_at(index, val)
      @item_list[(index - 1)].update_satus(val)
    end
    
end

class Item
  
  @@item_count = 0

  attr_reader :id, :description, :completed_status
  
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
    puts "Item(#{@id}): #{@description}.\t Completion status is #{@completion_status}"
  end
  
  def equals(item)
    @id = item.id
  end
  
  def completed?
    return @completion_status
  end
end
