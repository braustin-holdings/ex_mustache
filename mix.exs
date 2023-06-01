defmodule ExMustache.MixProject do
  use Mix.Project

  def project do
    [
      app: :ex_mustache,
      version: "0.2.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),

      # Package
      package: package(),
      description: description(),

      # Docs
      source_url: "https://github.com/braustin-holdings/ex_mustache",
      homepage_url: "https://github.com/braustin-holdings/ex_mustache",
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp description do
    "Fast mustache templating library for Elixir"
  end

  defp package do
    [
      maintainers: ["Akash Hiremath"],
      licenses: ["MIT"],
      links: %{GitHub: "https://github.com/braustin-holdings/ex_mustache"}
    ]
  end

  defp deps do
    [
      {:bbmustache, "~> 1.12.2", only: [:dev, :test]},
      {:yaml_elixir, "~> 2.9", only: [:test]},
      {:benchee, "~> 1.1", only: :dev},
      {:poison, "~> 3.1", only: :dev},
      {:temp, "~> 0.4", only: :test},
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end
end
