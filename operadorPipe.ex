defmodule Pipe do
  def downcase do
    string = "hello@gmail.com,hello@gmail.com,hello2@gmail.com"

    string
    |> String.downcase
    |> String.split(",")
    |> Enum.uniq

    IO.puts string
  end
end