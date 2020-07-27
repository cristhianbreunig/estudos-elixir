defmodule Modulo do
  
  def main() do
    spawn(fn() -> contar(50, 1) end)
    spawn(fn() -> contar(100, 1) end)
  end

  def contar(maximo, minimo) when maximo >= minimo  do
    IO.puts("Número: #{maximo}")
    contar(maximo - 1, minimo)
  end

  def contar(0, _), do: nil

end