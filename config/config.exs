# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :discount_consumer,
  ecto_repos: [DiscountConsumer.Repo]

# Configures the endpoint
config :discount_consumer, DiscountConsumerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "21/rxbLtU4TR0D2XMhMC+2AeATU7HB0hsccwqL80NE9SSikbSAQGO1bAcHODs6B5",
  render_errors: [view: DiscountConsumerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: DiscountConsumer.PubSub,
  live_view: [signing_salt: "AyGA+Fft"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
