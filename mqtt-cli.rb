class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.4.1/mqtt-cli-4.4.1-brew.zip"
  sha256 "ecb879f5b9d32d88e6cbd2f5b56a52c9b6a427b3b7732084b28facd4ca231135"
  depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.4.1.jar"
    prefix.install "brew/mqtt-cli-4.4.1.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end