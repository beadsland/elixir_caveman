defmodule Caveman.MixProject do
  use Mix.Project

  def project do
    [
      app: :caveman,
      version: "0.2.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:dialyxir, "~> 1.0", only: [:dev, :test], runtime: false},
      {:elixir, git: "https://github.com/elixir-lang/elixir.git",
                dev: [:test], optional: true, runtime: false,
                compile: "echo", app: false, tag: "v1.10.4"},
      {:earmark, "~> 1.4.9 ", only: [:test]}
    ]
  end
end
