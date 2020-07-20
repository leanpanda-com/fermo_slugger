defmodule FermoSlugger.MixProject do
  use Mix.Project

  @version "0.8.4"
  @git_origin "https://github.com/leanpanda-com/fermo_slugger"

  def project do
    [
      app: :fermo_slugger,
      version: @version,
      elixir: "~> 1.9",
      name: "Fermo Slugger",
      description: "Create URL slugs",
      package: package(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      docs: [
        extras: ["README.md"],
        homepage_url: @git_origin,
        main: "readme",
        source_ref: "v#{@version}",
        source_url: @git_origin
      ]
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev, runtime: false}
    ]
  end

  defp package do
    %{
      licenses: ["MIT"],
      links: %{
        "GitHub" => @git_origin
      },
      maintainers: ["Joe Yates"]
    }
  end
end
