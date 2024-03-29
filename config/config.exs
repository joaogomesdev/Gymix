# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :gymix,
  ecto_repos: [Gymix.Repo]

config :gymix, Gymix.Repo,
  migration_primary_key: [type: :binary_id],
  migration_foreign_key: [type: :binary_id]

# Configures the endpoint
config :gymix, GymixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "dVplgM1nz3356m2jBHxVANdL2Ft1hJWo1cX06bGy/RK1bml0y8LV9AZSbBPL09yY",
  render_errors: [view: GymixWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Gymix.PubSub,
  live_view: [signing_salt: "DSHpISNW"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
