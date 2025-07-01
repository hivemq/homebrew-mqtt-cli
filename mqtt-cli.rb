class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.41.0/mqtt-cli-4.41.0-brew.zip"
  sha256 "8ba1a348bb2a0f8237075cd6d172f0afa807fe7e6d2d7e6714b7cf97325ecd6b"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.41.0.jar"
    prefix.install "brew/mqtt-cli-4.41.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
