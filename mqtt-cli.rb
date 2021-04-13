class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.5.3/mqtt-cli-4.5.3-brew.zip"
  sha256 "1f977f9ef44d15a8522e59f6df5fd6c2376827fab3d5fa3a4c1b4cc6d999e62e"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.5.3.jar"
    prefix.install "brew/mqtt-cli-4.5.3.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
