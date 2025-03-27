class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.38.0/mqtt-cli-4.38.0-brew.zip"
  sha256 "eeec86c2f2c98f9547769d4ba7ee34edea30591624bfbf6a6e19c17c26d023ee"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.38.0.jar"
    prefix.install "brew/mqtt-cli-4.38.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
