class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.56.1/mqtt-cli-4.56.1-brew.zip"
  sha256 "2f1e6d77e31005c8dbef4d693eb4f936bd6fe2c5668d789a5fcee365750fb825"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.56.1.jar"
    prefix.install "brew/mqtt-cli-4.56.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
