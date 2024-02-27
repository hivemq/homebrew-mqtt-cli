class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.26.0/mqtt-cli-4.26.0-brew.zip"
  sha256 "42b94d671bb7e6b63c496ac7c2e4fd522436e8ef8b56a11897d228d5323d4f1a"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.26.0.jar"
    prefix.install "brew/mqtt-cli-4.26.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
