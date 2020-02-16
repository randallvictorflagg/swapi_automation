Quando("eu envio uma requisicao GET para a API planets") do
    @response = HTTParty.get("http://swapi.co/api/planets/")
end


Quando("envio uma nova requisicao com um valor maior") do
    body = JSON.parse(@response.body)
    puts body["count"]
    random_number = rand((body["count"]+1)..(body["count"]+50))
    @response = HTTParty.get("http://swapi.co/api/planets/"+random_number.to_s)
end

Então("eu valido a resposta e a mensagem recebida") do
    expect(@response.code).to eq 404
    expect(JSON.parse(@response.body)["detail"]).to eq "Not found"
end