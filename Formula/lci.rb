class Lci < Formula
  desc "Interpreter for the lambda calculus"
  homepage "http://lci.sourceforge.net/"
  url "https://downloads.sourceforge.net/project/lci/lci/0.6/lci-0.6.tar.gz"
  sha256 "204f1ca5e2f56247d71ab320246811c220ed511bf08c9cb7f305cf180a93948e"

  bottle do
    sha256 "88603e7d22fa41138940318a9ce703087062a5466e796a17d636f9ca212a9fc3" => :el_capitan
    sha256 "46a84d5644606edb37c1f915df039901ac96d6728345bb95d57ed52fe783a34d" => :yosemite
    sha256 "d9c2381543f5fff02005a66d07f5c8fb925e4c2c40d87392816947c3c1b22816" => :mavericks
  end

  conflicts_with "lolcode", :because => "both install `lci` binaries"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make", "install"
  end
end
