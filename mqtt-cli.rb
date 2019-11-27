class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.1.0/mqtt-cli-1.1.0-brew.zip"
  sha256 "fc0ff9cc0e6755bae18f9f953d40b8fa3ebe94da2dd9392fe0d49a2e60c906ed"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.1.0.jar"
    prefix.install "mqtt-cli-1.1.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
