class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.7.2/mqtt-cli-4.7.2-brew.zip"
  sha256 "74317853083e5a5e03a9bb0a3829be635fc749a7041dd429868dd661cfb72aa0"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.7.2.jar"
    prefix.install "brew/mqtt-cli-4.7.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
