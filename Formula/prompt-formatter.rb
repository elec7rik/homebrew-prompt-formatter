class PromptFormatter < Formula
  desc "Transform casual prompts into well-formatted prompts for AI coding assistants"
  homepage "https://github.com/elec7rik/prompt-fmt"
  url "https://registry.npmjs.org/prompt-formatter/-/prompt-formatter-1.1.4.tgz"
  sha256 "922abbf9d69ddeb19475ceaf3fbd563de0a2a728d79417b62ab50b0ecb0535a4"
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
