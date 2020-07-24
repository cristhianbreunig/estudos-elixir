IO.puts "Adivinhe a palavra!"

dicas = "farinha, água, trigo, padaria"
IO.puts "Dicas: #{dicas}"

palpite = IO.gets "Diga seu palpite:"
palpite = String.strip(palpite)

case palpite do
  "pao" ->
    IO.puts "Acertou a palavra"
  _errou ->
    IO.puts "Errou, game over!"
end