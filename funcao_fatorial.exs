defmodule Fatorial do
  
  def calcular(numero) when numero > 1 do
    numero * calcular(numero - 1)
  end
  def calcular(1), do: 1
  def calcular(_), do: nil

end