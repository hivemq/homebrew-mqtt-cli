class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.6.1/mqtt-cli-4.6.1-brew.zip"
  sha256 "0c650a0fcddbb5b88e8d833b2adc92eb1b7448a0252db689e3d78558e1d6080b"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.6.1.jar"
    prefix.install "brew/mqtt-cli-4.6.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
