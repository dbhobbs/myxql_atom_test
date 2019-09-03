# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
use Mix.Config
config :myxql_atom, ecto_repos: [MyxqlAtom.Repo]

config :myxql_atom, MyxqlAtom.Repo,
  database: "testytest",
  username: "testytest",
  password: "testytest",
  hostname: "db",
  charset: "utf8mb4",
  collation: "utf8mb4_unicode_ci",
  pool: Ecto.Adapters.SQL.Sandbox
