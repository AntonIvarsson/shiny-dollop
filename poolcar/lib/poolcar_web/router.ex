defmodule PoolcarWeb.Router do
  use PoolcarWeb, :router
  use AccessPass.Routes

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

  scope "/", PoolcarWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/" do
    access_pass :routes
  end

  # Other scopes may use custom stacks.
  # scope "/api", PoolcarWeb do
  #   pipe_through :api
  # end
end
