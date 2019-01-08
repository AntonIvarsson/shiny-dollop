# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :poolcar,
  ecto_repos: [Poolcar.Repo]

# Configures the endpoint
config :poolcar, PoolcarWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "SxIVNcNYnOFHohETucyQ1HEQfkVmiWBaSJArT+xdOtsrm6S67JQW5qPw33AxE1T3",
  render_errors: [view: PoolcarWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Poolcar.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# bamboo adapter and mail setup

config :access_pass, AccessPass.Mailer,
  adapter: Bamboo.SendgridAdapter,
  api_key: "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"

config :access_pass,
  repo: Poolcar.Repo,
  from: "Poolcarapp@whatever.com"

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
