class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.2.0/mqtt-cli-1.2.0-brew.zip"
  sha256 "43d3b0fc06fea0afceef79a4a6d9f64db6a991be288f01e99f5e7821a765c1f6"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-1.2.0.jar"
    prefix.install "brew/mqtt-cli-1.2.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end