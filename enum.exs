defmodule Modulo do
  
  def main() do
    lista = [2,4,7,7]

    # sem taquigrafia => fn(n) -> IO.puts(n) end
    funcao_print = &(IO.puts(&1))

    # sem taquigrafia => fn(n) -> rem(n, 2) == 0 end
    funcao_par = &(rem(&1, 2) == 0)

    IO.puts("Elementos da Lista:")
    IO.puts(Enum.each(lista, funcao_print))
    IO.puts("A lista é composta inteiramente de números pares ? #{Enum.all?(lista, funcao_par)}")
    IO.puts("Algum elemento da lista é par ? #{Enum.any?(lista, funcao_par)}")
    
    IO.inspect("Lista sem elementos duplicados": Enum.uniq(lista))
  end

end