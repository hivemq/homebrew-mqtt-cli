class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.5.1/mqtt-cli-4.5.1-brew.zip"
  sha256 "f85a97fe95efc2a7fb0b631047e8d9c0c76c7fbfc93ce4db544cf8dc27b440a2"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.5.1.jar"
    prefix.install "brew/mqtt-cli-4.5.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
