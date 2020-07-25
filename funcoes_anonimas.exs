defmodule FuncoesAnonimas do
  
  def main() do

    # Sintaxe completa (nomeada)
    somar = fn (x,y) -> x + y end
    IO.puts("Resultado de 5 + 5 = #{somar.(5,5)}")
    
    # Sintaxe curta (sem nome)
    subtrair = &(&1 - &2)
    IO.puts("Resultado de 10 - 6 = #{subtrair.(10,6)}")
  end

end