defmodule Vaporbot.Mixfile do
  use Mix.Project

  def project do
    [app: :vaporbot,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :nadia, :sugar]]
  end

  defp deps do
    [
      {:nadia, "~> 0.4.2"},
      {:sugar, "~> 0.5.0"}
    ]
  end
end
