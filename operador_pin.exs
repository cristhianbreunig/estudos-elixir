defmodule Modulo do
  
  def main do
      IO.inspect(x = 10)
      
      IO.inspect({x, y} = {10, 30})
      
      IO.inspect(x = 20)
      
      # OK, pois o valor de X não mudou
      IO.inspect({^x, y} = {20, 50})

      # A operação abaixo resulta em erro,
      # pois o ^ não permite a modificação do valor da variável
      IO.inspect({^x, y} = {10, 50})
  end

end
