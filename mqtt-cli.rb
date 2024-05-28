class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.29.0/mqtt-cli-4.29.0-brew.zip"
  sha256 "80e2a23332049e61b1de30a76417a625fa9e75c1206a008754501e03e416817b"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.29.0.jar"
    prefix.install "brew/mqtt-cli-4.29.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
