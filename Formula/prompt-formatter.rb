class PromptFormatter < Formula
  desc "Transform casual prompts into well-formatted prompts for AI coding assistants"
  homepage "https://github.com/elec7rik/prompt-fmt"
  url "https://registry.npmjs.org/prompt-formatter/-/prompt-formatter-1.0.1.tgz"
  sha256 "3776abdf01a806dcb0e15929f399f1db39282c9717183ecbced64e12cac8af2f"
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
