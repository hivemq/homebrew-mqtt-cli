class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.6.3/mqtt-cli-4.6.3-brew.zip"
  sha256 "2b18d2392cd8ceb8ea764e8a4b73ed2c46d9a0144d510bde9d57ce479fd09ab1"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.6.3.jar"
    prefix.install "brew/mqtt-cli-4.6.3.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
