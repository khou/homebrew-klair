class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/klair/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "0f50297c24e97c5c402f71eeaebe1ad147d0be12bae2924906006024d94f34fe"
  license "MIT"

  depends_on "python@3.11"

  resource "langgraph" do
    url "https://files.pythonhosted.org/packages/placeholder/langgraph-0.2.0.tar.gz"
    sha256 "0f50297c24e97c5c402f71eeaebe1ad147d0be12bae2924906006024d94f34fe"
  end

  # Add other Python dependencies as resources here
  # Run `poet` tool to generate these automatically

  def install
    virtualenv_install_with_resources

    # Install the prompts directory
    (libexec/"prompts").install Dir["prompts/*"]

    # Create wrapper script
    (bin/"klair").write <<~EOS
      #!/bin/bash
      export KLAIR_PROMPTS_DIR="#{libexec}/prompts"
      exec "#{libexec}/bin/python" -m klair "$@"
    EOS
  end

  def caveats
    <<~EOS
      Klair requires a running LLM backend.

      For local LLM (recommended):
        1. Install Ollama: brew install ollama
        2. Start Ollama: ollama serve
        3. Pull DeepSeek: ollama pull deepseek-r1

      For OpenAI API:
        klair config --provider openai --api-key YOUR_KEY

      Ensure kubectl is configured with cluster access:
        kubectl config get-contexts
    EOS
  end

  test do
    assert_match "Klair", shell_output("#{bin}/klair version")
  end
end
