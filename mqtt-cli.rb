class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.4.2/mqtt-cli-4.4.2-brew.zip"
  sha256 "4443a6fd6364ec4c2e1b25d9b7c154bd8cc55136ad105407e110d7e9536ca8a0"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.4.2.jar"
    prefix.install "brew/mqtt-cli-4.4.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end