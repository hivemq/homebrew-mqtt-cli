class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.8.4/mqtt-cli-4.8.4-brew.zip"
  sha256 "40d34703b880d5afc01626b3d67dd2259a3c568485efa69ed334b237f88d6d8a"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.8.4.jar"
    prefix.install "brew/mqtt-cli-4.8.4.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
