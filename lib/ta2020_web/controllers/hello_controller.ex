defmodule Ta2020Web.HelloController do
  use Ta2020Web, :controller

  def index(conn,_params) do
    render conn, "index.html"
  end
end
