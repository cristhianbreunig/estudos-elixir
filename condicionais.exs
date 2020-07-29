defmodule Modulo do
  
  def retorna_maior(a, b) do
    cond do
      a >= b -> a
      true -> b
    end
  end

  # exemplo de parâmetro = %{"login" => "user123", "email" => "user123@domain.com", "senha" => "querty"}
  def retornar_dados_usuario(usuario) do
    with {:ok, login} <- retornar_login(usuario),
         {:ok, email} <- retornar_email(usuario),
         {:ok, senha} <- retornar_senha(usuario)
    do
      {:ok, %{login: login, email: email, senha: senha}}
    end
  end

  defp retornar_login(%{"login" => login}), do: {:ok, login}
  defp retornar_login(_), do: {:error, "É necessário informar o login!"}
  
  defp retornar_email(%{"email" => email}), do: {:ok, email}
  defp retornar_email(_), do: {:error, "É necessário informar o email!"}
  
  defp retornar_senha(%{"senha" => senha}), do: {:ok, senha}
  defp retornar_senha(_), do: {:error, "É necessário informar o senha!"}

end