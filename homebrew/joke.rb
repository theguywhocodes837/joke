require 'rbconfig'
class Joke < Formula
  desc ""
  homepage "https://github.com/kaminey/joke"
  version "1.0.1"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/kaminey/joke/releases/download/v1.0.1/joke_1.0.1_darwin_amd64.zip"
      sha256 "fd2c6509715df428b27a2724aad7e62ed0b8a6b6ad386978e462f266c4a4c8aa"
    when /linux/
      url "https://github.com/kaminey/joke/releases/download/v1.0.1/joke_1.0.1_linux_amd64.tar.gz"
      sha256 "34241960a241b3a50decaa8f75ed39a9523ebdf50ec75ce242e33de8f39f48e6"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/kaminey/joke/releases/download/v1.0.1/joke_1.0.1_darwin_386.zip"
      sha256 "1141235dc087cb1778a1db9d3b82b4a172d20326f1f8d925078dc9138039477f"
    when /linux/
      url "https://github.com/kaminey/joke/releases/download/v1.0.1/joke_1.0.1_linux_386.tar.gz"
      sha256 "5e838ff4abc6bf4b2566e894e480d635e7880aa6b99e36908b2932ca37bfa6f3"
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "joke"
  end

  test do
    system "joke"
  end

end
