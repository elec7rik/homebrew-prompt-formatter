class PromptFormatter < Formula
  desc "Transform casual prompts into well-formatted prompts for AI coding assistants"
  homepage "https://github.com/elec7rik/prompt-fmt"
  url "https://registry.npmjs.org/prompt-formatter/-/prompt-formatter-1.1.0.tgz"
  sha256 "691395ff64455ec31e3773396221e2f3b6ca1ad516322d99c91ac1b3ed5586db"
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
