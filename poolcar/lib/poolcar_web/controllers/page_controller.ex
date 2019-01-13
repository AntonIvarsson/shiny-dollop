defmodule PoolcarWeb.PageController do
  use PoolcarWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def echo(conn, _params) do
    json(conn, %{id: 123})
  end

end
