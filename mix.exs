defmodule B3.MixProject do
  use Mix.Project

  def project do
    [
      app: :b3,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "B3",
      description: "B3 is a pure Elixir implementation of the BLAKE3 hashing algorithm.",
      source_url: "https://github.com/lebrunel/b3",
      docs: [
        main: "B3"
      ],
      package: pkg(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: []
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_doc, "~> 0.29", only: :dev, runtime: false},
      {:jason, "~> 1.4", only: :test},
    ]
  end

  defp pkg do
    [
      name: "b3",
      files: ~w(lib .formatter.exs mix.exs README.md LICENSE),
      licenses: ["Apache-2.0"],
      links: %{
        "GitHub" => "https://github.com/lebrunel/b3"
      }
    ]
  end
end
