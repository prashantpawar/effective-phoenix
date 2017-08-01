# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :kitteh,
  ecto_repos: [Kitteh.Repo]

# Configures the endpoint
config :kitteh, Kitteh.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JjX6bsZbrfjGT2uBH8nk404K4+7wdvbIIOBDJ9wANExm/UHTpoZWGd8xgCl1oFWc",
  render_errors: [view: Kitteh.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Kitteh.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
