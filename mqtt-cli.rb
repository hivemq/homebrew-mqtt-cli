class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.19.0/mqtt-cli-4.19.0-brew.zip"
  sha256 "9e76e349a467bb77e0ca0b45830b1a47261763e230fe9023fa9f21c6655d1d99"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.19.0.jar"
    prefix.install "brew/mqtt-cli-4.19.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
