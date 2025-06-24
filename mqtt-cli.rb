class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.40.0/mqtt-cli-4.40.0-brew.zip"
  sha256 "33910e63692d53aa1aa8f0ebec96ef0396ef40057604ac5a2ffa31f0f5a871dd"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.40.0.jar"
    prefix.install "brew/mqtt-cli-4.40.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
