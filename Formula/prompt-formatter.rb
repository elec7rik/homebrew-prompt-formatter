class PromptFormatter < Formula
  desc "Transform casual prompts into well-formatted prompts for AI coding assistants"
  homepage "https://github.com/elec7rik/prompt-fmt"
  url "https://registry.npmjs.org/prompt-formatter/-/prompt-formatter-1.1.6.tgz"
  sha256 "f8229a034326a8c4d38dac5f691f0acc80f56c3215f57b92a4912790c9461965"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match "prompt-formatter", shell_output("#{bin}/prompt-formatter --help")
  end
end
