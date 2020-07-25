defmodule Lista do
  
  def separar_itens([primeiro_item | resto]) do
    IO.puts("Primeiro item da lista = #{primeiro_item}")
    IO.puts("Resto da lista:")

    Enum.each resto, fn item ->
      IO.puts(item)
    end
  end

  def exibir_itens([palavra | palavras]) do
    IO.puts(palavra)
    exibir_itens(palavras)
  end

  # O "_" indica que a função está sendo chamada sem valor,
  # nesse caso poderia ser utilizado também "[]", indicando uma lista vazia
  def exibir_itens(_) do
    IO.puts("Não existem mais itens")
  end

  def deletar_item(lista, item) do
    List.delete(lista, item)
  end

  def deletar_item_na_posicao(lista, posicao) do
    List.delete_at(lista, posicao)
  end

  def exibir_primeiro_item(lista) do
    List.first(lista)
  end

  def exibir_ultimo_item(lista) do
    List.last(lista)
  end

end