defmodule Mapa do
  
  def capitais() do
    capitais = %{
      "RS" => "Porto Alegre",
      "MG" => "Belo Horizonte",
      "SP" => "São Paulo",
    }
    
    IO.puts ("A capital do Rio Grande do Sul é: #{capitais["RS"]}")

    capitais = Dict.put_new(capitais, "RJ", "Rio de Janeiro")

    IO.puts ("A capital do Rio de Janeiro é: #{capitais["RJ"]}")
    
    # Outra forma de declarar
    capitais = %{
      rs: "Porto Alegre",
      mg: "Belo Horizonte",
      sp: "São Paulo",
      rj: "Rio de Janeiro",
    }

    IO.puts ("A capital de São Paulo é: #{capitais.sp}")
  end

end