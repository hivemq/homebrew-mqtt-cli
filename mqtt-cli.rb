class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.8.2/mqtt-cli-4.8.2-brew.zip"
  sha256 "0179839fdffa2293d4f71c5bd3d9eb75e79cfadc43d66bc2c468bbcf75b560ce"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.8.2.jar"
    prefix.install "brew/mqtt-cli-4.8.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
