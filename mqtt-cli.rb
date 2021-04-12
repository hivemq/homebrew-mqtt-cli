class MqttCli < Formula
  desc "MQTT CLI is a tool that provides a feature rich command line interface for connecting, publishing, subscribing, unsubscribing and disconnecting various MQTT clients simultaneously and supports  MQTT 5.0 and MQTT 3.1.1 "
  homepage "https://www.hivemq.com"
  url "https://github.com/hivemq/mqtt-cli/releases/download/v4.5.2/mqtt-cli-4.5.2-brew.zip"
  sha256 "c869bb60d7e162c65adc667ab425b6c6419f4a76070c27686468484bb2920651"
  # depends_on :java => "1.8+"

  def install
    inreplace "brew/mqtt", "##PREFIX##", "#{prefix}/mqtt-cli-4.5.2.jar"
    prefix.install "brew/mqtt-cli-4.5.2.jar"
    bin.install "brew/mqtt"
  end

  test do
    system "false"
  end
end
