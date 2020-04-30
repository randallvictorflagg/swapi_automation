When("a GET request for planets API is sent") do
    @response = HTTParty.get("http://swapi.dev/api/planets/")
end

Quando("another GET request for planets API with a higher value is sent") do
    body = JSON.parse(@response.body)
    puts body["count"]
    random_number = rand((body["count"]+1)..(body["count"]+50))
    @response = HTTParty.get("http://swapi.dev/api/planets/"+random_number.to_s)
end

Então("the response and error must have a valid text message") do
    expect(@response.code).to eq 404
    expect(JSON.parse(@response.body)["detail"]).to eq "Not found"
end