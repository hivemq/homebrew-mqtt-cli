class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.0.0/mqtt-cli-1.0.0-brew.zip"
  sha256 "daf467b21d8333700a13ea648388bd6527dc9ae946d743e4b1e8eaea40744fe7"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.0.0.jar"
    prefix.install "mqtt-cli-1.0.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
