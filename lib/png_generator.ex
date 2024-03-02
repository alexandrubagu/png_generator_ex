defmodule PngGenerator do
  @moduledoc """
  Documentation for `PngGenerator`.

  https://www.erlang.org/docs/17/man/egd
  """

  def run do
    image = :egd.create(500, 500)
    black = :egd.color(:black)

    :egd.rectangle(image, {0, 0}, {500, 500}, black)
    :egd.line(image, {20, 0}, {20, 20}, black)

    image
    |> :egd.render()
    |> :egd.save("output.png")

    :egd.destroy(image)
  end
end
