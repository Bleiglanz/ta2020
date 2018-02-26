use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ta2020, Ta2020Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ta2020, Ta2020.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "antonecto",
  password: "onlylocal",
  database: "antondb",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
