class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.7.4/mqtt-cli-4.7.4-brew.zip"
  sha256 "12bd5534cca653b47f03f2a2609d6755b9f7a48ce6e3de86fc9c0a35aa717a6c"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.7.4.jar"
    prefix.install "brew/mqtt-cli-4.7.4.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
