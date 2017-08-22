# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :up50,
  ecto_repos: [Up50.Repo]

# Configures the endpoint
config :up50, Up50Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Nu4iQ3gSR1yFGD2SYmpyoOCipHmVuI2PsBZGAen5zu96WFWdW5DMxrvosaKwpKz6",
  render_errors: [view: Up50Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Up50.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
