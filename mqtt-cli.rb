class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.24.0/mqtt-cli-4.24.0-brew.zip"
  sha256 "ac6900b859b8a03c37ab8478eaed4d7fe07a1b023904e4db4c04b6e8e03f9fbd"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.24.0.jar"
    prefix.install "brew/mqtt-cli-4.24.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
