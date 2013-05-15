require 'formula'

class Eclipse < Formula
  homepage 'http://www.eclipse.org/'

  # Eclipse is downloaded from the OSU Open Source Lab mirror by default.
  url 'http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/juno/SR2/eclipse-jee-juno-SR2-macosx-cocoa-x86_64.tar.gz'
  sha1 '40d61b8627e902cada4d4d1b742c600b5d2f450d'

  # Eclipse => About Eclipse
  # Juno Service Release 2 - Build 20130225-0426
  # 1.5.2.201302211-1820
  version '1.5.2'

  def install
    files = Dir['*']
    files -= %w{ eclipse readme }

    bin.install 'eclipse'
    doc.install 'readme'
    prefix.install files
  end

  test do
    system "eclipse"
  end
end
