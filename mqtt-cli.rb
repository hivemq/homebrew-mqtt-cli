class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.31.0/mqtt-cli-4.31.0-brew.zip"
  sha256 "7a3c5c0d8edfcab34ca95d5d5ac47f922295e2365c994d5c13e4d581b105804d"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.31.0.jar"
    prefix.install "brew/mqtt-cli-4.31.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
