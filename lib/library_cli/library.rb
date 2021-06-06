class Library 
  attr_reader :name 
  attr_accessor :event, :book
  def initialize(name, id)
    @name = name
    @id = id
    @@all << self
  end
  
  def self.find_by_name(name)
    index = name.to_i - 1
    all[index]
  end
  
  def self.all
    @@all
  end
  
  def update(name, book, event)
    self.name = name 
    self.book = book
    self.event = event
  end
end