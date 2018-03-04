defmodule Ta2020Web.Router do
  use Ta2020Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Ta2020Web do
    pipe_through :browser # Use the default browser stack
    get "/playground", PlaygroundController, :play
    get "/", PageController, :index
  end


end
