defmodule Ta2020Web.PlaygroundController do
  use Ta2020Web, :controller
  def play(conn, %{"name"=> name}) do
    render conn, "play.html", name: name
  end
  def play(conn, _throwaway) do
    render(conn, "play.html", name: "Niemand")
  end
end



