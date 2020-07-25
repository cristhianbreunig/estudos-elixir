defmodule Calculadora do
  
  def somar(x, y) do
    x + y
  end

  def subtrair(x, y) when x >= y do
    realiza_subtracao(x, y)
  end

  def subtrair(x, y) when y > x do
    "Ops, a primeira variável deve ser maior que a segunda!"
  end

  defp realiza_subtracao(x, y) do
    x - y
  end

  def multiplicar(x, y) do
    x * y
  end

  def raiz(x) do
    x * x
  end

end