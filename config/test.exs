use Mix.Config

config :friends, Friends.Repo,
  username: "postgres",
  password: "postgres",
  database: "friends_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox