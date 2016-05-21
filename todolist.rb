class TodoList
    
    attr_reader :title, :owner
    
    def initialize(title, owner)
      @title = title
      @owner = owner
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
      
      puts "--------------------"
      puts @title
      puts "Owner: #{@owner}"
      puts "--------------------"
      
      @item_list.each do |item|
        item.print_details
      end
    end
    
    def update_item_status_at(index, val)
      @item_list[(index - 1)].update_satus(val)
    end
    
    def save_to(filename)

      file = open(filename ,'w')
      file.write("#{@title},#{@owner}\r\n")
      @item_list.each { |item| item.save_to(file) }
      file.close()
      
      
    end
    
    def load_from(filename)

      File.foreach(filename).with_index do |line, line_num|

        if line_num == 0
          parameters = line.split(',')
          @title = parameters[0]
          @owner = parameters[1]
        else
          parameters = line.split(',')
          
          line_item = Item.new parameters[1] 
          line_item.id = parameters[0]
          line_item.completion_status = parameters[2]
          @item_list.push(line_item)
          
        end
      end
    end
    
    def set_title_to(new_title)
      @title = new_title
    end
    
    def change_owner_to(new_owner)
      @owner = new_owner
    end
      
end

class Item
  
  @@item_count = 0

  attr_accessor :id, :description, :completion_status
  
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
    puts "#{@id} - #{@description}\t Completed: #{@completion_status}"
  end
  
  def equals(item)
    @id = item.id
  end
  
  def completed?
    @completion_status
  end
  
  def save_to(file)
    
    status = @completion_status == true ? "true" : "false"
  
    file.write("#{@id},#{@description},#{status}\r\n")
  end
  
end
