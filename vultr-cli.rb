# This file was generated by GoReleaser. DO NOT EDIT.
class VultrCli < Formula
  desc "Official command-line tool for Vultr services"
  homepage "https://github.com/vultr/vultr-cli"
  version "2.1.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/vultr/vultr-cli/releases/download/v2.1.0/vultr-cli_2.1.0_macOs_64-bit.tar.gz"
    sha256 "fbdd72f4f2c90d4bd2a3e2ac7306b312bff28235e6462767d6e229f54c91d899"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/vultr/vultr-cli/releases/download/v2.1.0/vultr-cli_2.1.0_linux_64-bit.tar.gz"
    sha256 "0e21a1adadb530edcda39d48603d16139d8a724bf334a448aa2bca995c852df7"
  end

  depends_on "go"

  def install
    bin.install "vultr-cli"
    prefix.install_metafiles
  end

  test do
    output = shell_output("#{bin}/vultr-cli version 2>&1", 1)
    assert_match "Please export your VULTR API key as an environment variable or add `api-key` to your config file, eg:\nexport VULTR_API_KEY='<api_key_from_vultr_account>'\n", output
  end
end
