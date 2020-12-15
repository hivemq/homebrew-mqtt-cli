class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.4.4/mqtt-cli-4.4.4-brew.zip"
  sha256 "bb7cf8bf6ab3c8c798044b84e93879683fe23274e8e53712d7fed451c5cf1a6d"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.4.4.jar"
    prefix.install "brew/mqtt-cli-4.4.4.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
