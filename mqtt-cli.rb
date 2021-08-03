class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.6.4/mqtt-cli-4.6.4-brew.zip"
  sha256 "0081ee785a1e2ed385f983c3c1578b2ae00035fc6b57ed53f94abcd1c36ef216"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.6.4.jar"
    prefix.install "brew/mqtt-cli-4.6.4.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
