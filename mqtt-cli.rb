class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v1.0.0/mqtt-cli-1.0.0-brew.zip"
  sha256 "6c87009c1e49e8dabbb07787d851261f76827e790ac96061ec2609112710127f"
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