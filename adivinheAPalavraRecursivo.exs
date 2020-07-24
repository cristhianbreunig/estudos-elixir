defmodule AdivinheAPalavra do
  def jogar do
    dicas = "farinha, água, trigo, padaria"
    IO.puts "Dicas: #{dicas}"

    pergunta() |> tentativa()
  end

  def pergunta do
    palpite = IO.gets "Diga seu palpite:"
    palpite = String.strip(palpite)
  end

  def errou do
    IO.puts("Ops, você errou... tente novamente")
  end

  def acertou do
    IO.puts("Você acertou, parabéns!")
  end

  def tentativa("pão") do
    acertou()
  end

  def tentativa(_) do
    errou()

    pergunta() |> tentativa()
  end

end