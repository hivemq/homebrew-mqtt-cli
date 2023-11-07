class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.22.0/mqtt-cli-4.22.0-brew.zip"
  sha256 "38ef5e0cb9bfdc7b1573d51c769342447314228c4fda46865a06d46e30234d75"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.22.0.jar"
    prefix.install "brew/mqtt-cli-4.22.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
