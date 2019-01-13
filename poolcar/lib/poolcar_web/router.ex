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

  pipeline :auth do
    plug Auth
  end

  scope "/", PoolcarWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/access" do
    pipe_through :api
    access_pass :routes
  end

  scope "/api", PoolcarWeb do
    pipe_through :auth
    get "/echo", PageController, :echo
  end

  # Other scopes may use custom stacks.
  # scope "/api", PoolcarWeb do
  #   pipe_through :api
  # end
end
