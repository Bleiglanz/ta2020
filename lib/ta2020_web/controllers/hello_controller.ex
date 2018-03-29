defmodule Ta2020Web.HelloController do
  use Ta2020Web, :controller

  def index(conn,_params) do
    render conn, "index.html"
  end

  def zeichen(conn, %{"susi"=>susi}) do
    render conn, "index.html", susi: susi
  end
end
