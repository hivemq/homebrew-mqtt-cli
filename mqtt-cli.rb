class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.15.0/mqtt-cli-4.15.0-brew.zip"
  sha256 "e69dfe6ebdbea988dffe4175584736d6574494d1604c894d706ee1644c115478"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.15.0.jar"
    prefix.install "brew/mqtt-cli-4.15.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
