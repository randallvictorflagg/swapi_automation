Quando("eu envio uma requisicao GET para a API films") do
  @response = HTTParty.get("http://swapi.co/api/films/")
  puts @response.code
end

Então("eu recebo dados validos da requisicao") do
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

