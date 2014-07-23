require "formula"

class Projectk < Formula
  homepage "https://www.github.com/aspnet/Home"
  version "1.0.0-alpha3-10163"
  url "https://www.myget.org/F/aspnetvnext/api/v2/package/KRE-mono45-x86/1.0.0-alpha3-10165"
  sha1 "e1852585c9457fc1464913796fc2eebbd9f4e8c9"

  depends_on "mono" => :recommended

  def install
    bin.install Dir["bin/*"]
  end

  test do
    system "kvm"
    assert $?.success?
  end

  def caveats
    "This requires >=Mono 3.6. Checkout github.com/aspnet/homebrew-k"
  end

end
