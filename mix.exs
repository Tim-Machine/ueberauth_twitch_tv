defmodule UeberauthTwitchTv.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [app: :ueberauth_twitch_tv,
     version: @version,
     name: "Ueberauth Twitch.tv",
     package: package,
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     source_url: "https://github.com/tim-machine/ueberauth_twitch_tv",
     homepage_url: "https://github.com/tim-machine/ueberauth_twitch_tv",
     description: description,
     deps: deps,
     docs: docs]
  end

  def application do
    [applications: [:logger, :ueberauth, :oauth2]]
  end

  defp deps do
    [{:ueberauth, "~> 0.4"},
     {:oauth2, "0.6.0"},

     # docs dependencies
     {:earmark, "~> 0.2", only: :dev},
     {:ex_doc, ">= 0.0.0", only: :dev}]
  end

  defp docs do
    [extras: ["README.md"]]
  end

  defp description do
    "An Ueberauth strategy for using Twitch.tv to authenticate your users."
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Tim Smith"],
      licenses: ["MIT"],
      links: %{"GitHub": "https://github.com/tim-machine/ueberauth_twitch_tv"}]
  end
end
