defmodule Poolcar.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    # List all child processes to be supervised
    children = [
      # Start the Ecto repository
      Poolcar.Repo,
      # Start the endpoint when the application starts
      PoolcarWeb.Endpoint
      # Starts a worker by calling: Poolcar.Worker.start_link(arg)
      # {Poolcar.Worker, arg},
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Poolcar.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    PoolcarWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
