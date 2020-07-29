defmodule Modulo do
  
  def main() do
    lista = [2,3,4,7,7,9]

    # sem taquigrafia = fn(n) -> IO.puts(n) end
    funcao_print = &(IO.puts(&1))

    # sem taquigrafia = fn(n) -> rem(n, 2) == 0 end
    funcao_par = &(rem(&1, 2) == 0)

    # sem taquigrafia = fn x -> x * 2 end
    funcao_duplicar = &(&1 * 2)

    # sem taquigrafia = fn x -> rem(x, 2) == 1 end
    funcao_resto = &(rem(&1,2) == 1)

    # sem taquigrafia = fn x,y -> x + y end
    funcao_somar = &(&1 + &2)

    IO.puts("Elementos da Lista:")
    IO.puts(Enum.each(lista, funcao_print))
    IO.puts("A lista é composta inteiramente de números pares ? #{Enum.all?(lista, funcao_par)}")
    IO.puts("Algum elemento da lista é par ? #{Enum.any?(lista, funcao_par)}")
    
    IO.inspect("Lista sem elementos duplicados": Enum.uniq(lista))
    IO.inspect("Duplicando cada item da lista": Enum.map(lista, funcao_duplicar))
    IO.inspect("Lista com os elementos cujo resto da divisão é 1": Enum.filter(lista, funcao_resto))
    IO.inspect("Somatório da lista": Enum.reduce(lista, 0, funcao_somar))
  end

end