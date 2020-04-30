When("a GET request for films API is sent") do
  @response = HTTParty.get("http://swapi.dev/api/films/")
  puts @response.code
end

Then("the response contains valid data") do
  expect(@response.code).to eq 200
  puts "--------------------"
  body = JSON.parse(@response.body)
  i = 0
  @titles_list = Array[]
  body["results"].each do |title| 
    @titles_list.push(body["results"][i]["title"])
    i=i+1
  end

  puts @titles_list

end

