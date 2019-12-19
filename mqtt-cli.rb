class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.1.1/mqtt-cli-1.1.1-brew.zip"
  sha256 "78b2219c3e9ba6cd7651ba7bb5cfc72f7f6e45bcc268edd5e1724f809e13eda0"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.1.1.jar"
    prefix.install "mqtt-cli-1.1.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end