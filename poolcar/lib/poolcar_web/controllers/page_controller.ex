defmodule PoolcarWeb.PageController do
  use PoolcarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
