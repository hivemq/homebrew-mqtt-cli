class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.28.0/mqtt-cli-4.28.0-brew.zip"
  sha256 "583272abdc2d555178acadce033e041e554c20e7bddd1c07d672c7f5120975f4"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.28.0.jar"
    prefix.install "brew/mqtt-cli-4.28.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
