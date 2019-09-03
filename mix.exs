defmodule MyxqlAtom.MixProject do
  use Mix.Project

  def project do
    [
      app: :myxql_atom,
      version: "0.1.0",
      elixir: "~> 1.7",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {MyxqlAtom.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:myxql, "~> 0.2"},
      {:ecto_sql, "~> 3.1"},
      {:jason, "~> 1.0"}
    ]
  end
end
