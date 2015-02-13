defmodule Rquote.Mixfile do
  use Mix.Project

  def project do
    [app: :rquote,
     version: "0.0.1",
     elixir: "~> 1.0",
     escript: escript,
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  def escript do
    [main_module: Rquote.Cli]
  end

  def description do
    """
    Library and CLI for generating random price quotes
    """
  end

  def package do
    [contributors: ["Bob Stockdale"],
     licenses: ["MIT License"],
     links: %{"GitHub" => "https://github.com/stocks29/rquote"}]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    []
  end
end
