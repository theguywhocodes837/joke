require 'rbconfig'
class Joke < Formula
  desc ""
  homepage "https://github.com/kaminey/joke"
  version "1.0.0"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/kaminey/joke/releases/download/v1.0.0/joke_1.0.0_darwin_amd64.zip"
      sha256 "411efd9eae4ce992f8c72222d93c88f42599b8f18b7cf754140baee5b5af7bbe"
    when /linux/
      url "https://github.com/kaminey/joke/releases/download/v1.0.0/joke_1.0.0_linux_amd64.tar.gz"
      sha256 "6e9fe9ca23e32d3223d528c9532200e097f90e9738c04aaf87c50e902c1789e8"
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
      url "https://github.com/kaminey/joke/releases/download/v1.0.0/joke_1.0.0_darwin_386.zip"
      sha256 "6cb8f34399c3b15139a8c30d56617e90811770c7fb6d2a446d37ba52b74ba738"
    when /linux/
      url "https://github.com/kaminey/joke/releases/download/v1.0.0/joke_1.0.0_linux_386.tar.gz"
      sha256 "f5c45a9990656b96034418fb28f61818f1503e20f58cbba1ce95f7f91a35a471"
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
