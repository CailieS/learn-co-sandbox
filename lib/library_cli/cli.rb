class Cli 
  def run 
    welcome
    Api.get_titles
    main
  end
end
  
  def main
    print_all
    print_selection_prompt
    id = valid_id?(prompt_selection)
    updated_author = get_author_details(id)
    print_details(updated_author)
    print_continue
    continue?(prompt_selection)
  end
  
  def print_all
    author.all.each {|p| "#{p.id}.) #{p.name}"}
 
  
  def print_selection_prompt
    puts "Please selecet an author by number for more information!"
  end
  
  def print_error
    puts "Invalid selection, please try again."
  end

  def print_detail(author)
    puts "name:  #{author.name}"
    puts "events: #{author.event}" 
    puts "book:" #{author.book}"
   
  end
  
  def print_continue
    puts "Would you like to continue? (y/n)"
  end
  
  def print_goodbye
    puts "Goodbye!"
  end
  
  def prompt_selection
    gets.chomp
  end
  
  def valid_id?(id)
    id= id.i 
    if id < 1 || author.all.size 
      print_error
      sleep 1
      main
    end
    id
  end
  
  def continue?(choice)
    if choice == 'y'
      main
    else
      print_goodbye
      exit
    end
  end
    
  def get_author_details(id)
    Api.get_details_by_id(id)
  end
  
  def welcome
    puts "Welcome to the CLI!"
  end
  
end