# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :perudo_api,
  ecto_repos: [PerudoApi.Repo]

# Configures the endpoint
config :perudo_api, PerudoApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "DX//f3CUHwmpJ1MtimpioOkKIE1sXSjN77BajT2FNgrtXCfUrA5M0BG3bUAL+DF4",
  render_errors: [view: PerudoApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: PerudoApi.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
