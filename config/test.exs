use Mix.Config

# Configure your database
config :chat_example, ChatExample.Repo,
  username: "postgres",
  password: "postgres",
  database: "chat_example_test",
  hostname: "postgres",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :chat_example, ChatExampleWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn
