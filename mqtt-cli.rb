class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.16.0/mqtt-cli-4.16.0-brew.zip"
  sha256 "ee43003d874b62d6ec8009bfcb1d6c1dd7a561dd51d328a288a9f14c3c298e84"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.16.0.jar"
    prefix.install "brew/mqtt-cli-4.16.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
