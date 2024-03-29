defmodule MqttUdpSinkEx.Mixfile do
  use Mix.Project

  def project do
    [app: :mqtt_udp_sink_ex,
     version: "0.0.1",
     elixir: "~> 1.0",
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
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
    [
      { :earmark, "~> 0.1", only: :dev },
      { :ex_doc, "~> 0.7", only: :dev },
      { :message_pack, "~> 0.1.4" },
      { :mqttex, git: "https://github.com/alfert/mqttex.git", tag: "v0.0.1" }
    ]
  end
end
