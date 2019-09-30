class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.0.1/mqtt-cli-1.0.1-brew.zip"
  sha256 "c6e630103c9a1aa185a0a8a1b397869efd27cb2355f0b6426c62df8a32ef29de"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.0.1.jar"
    prefix.install "mqtt-cli-1.0.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end