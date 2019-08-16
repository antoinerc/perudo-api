use Mix.Config

# Configure your database
config :perudo_api, PerudoApi.Repo,
  username: System.get_env("PSQL_TEST_USERNAME"),
  password: System.get_env("PSQL_TEST_PASSWORD"),
  database: "perudo_api_test",
  hostname: System.get_env("PSQL_TEST_HOST"),
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :perudo_api, PerudoApiWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Used in testing env to speed up process by decreasing security.
config :bcrypt_elixir, :log_rounds, 4
