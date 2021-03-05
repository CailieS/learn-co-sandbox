class Api 
 BASE_URL = "http://www.penguinrandomhouse.biz/webservices/rest/#authors"
 
 def self.get_author
   res = RestClient.get(BASE_URL)
   data = JSON.parse(res.body)
   binding.pry
   data["results"].each do |authors|
   name = author["name"]
   author.new(name, id)
   end
  end
  
  def self.get_details_by_id(id)
    Titles.find_by_id(id)
    res = RestClient.get("#{BASE_URL}#{id}")
    data = JSON.parse(res.body)
    author = data['stats'][-1]["base_stat"]
    title = data['stats'][-2]["base_stat"]
    event = data['stats'][-3]["base_stat"]
    selected_title.update(author, title, event)
 end
end