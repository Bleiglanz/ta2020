defmodule Ta2020Web.PlaygroundController do
  use Ta2020Web, :controller
  def play(conn, _params) do
    render conn, "play.html"
  end
end
