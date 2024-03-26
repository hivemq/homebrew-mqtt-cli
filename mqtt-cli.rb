class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.27.0/mqtt-cli-4.27.0-brew.zip"
  sha256 "eb8616dd64dc4bf04e2cb8463d6ca4083be6eed0dd5398b262a4b0e2f2cc2041"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.27.0.jar"
    prefix.install "brew/mqtt-cli-4.27.0.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
