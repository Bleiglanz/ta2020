# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ta2020,
  ecto_repos: [Ta2020.Repo]

# Configures the endpoint
config :ta2020, Ta2020Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yzSL+kZjV0EJ9Jit1Hdk2avYAf00b6vDqjyxIkZTV2A2ufJq0dKvPCeyhOIf0Ax8",
  render_errors: [view: Ta2020Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ta2020.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
