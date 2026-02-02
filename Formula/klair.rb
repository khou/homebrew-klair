class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/klair/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create virtualenv and install with pip (handles all dependencies automatically)
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install_and_link buildpath

    # Install the prompts directory
    (libexec/"prompts").install Dir["prompts/*"]

    # Create wrapper script that sets KLAIR_PROMPTS_DIR
    (bin/"klair").unlink if (bin/"klair").exist?
    (bin/"klair").write <<~EOS
      #!/bin/bash
      export KLAIR_PROMPTS_DIR="#{libexec}/prompts"
      exec "#{libexec}/bin/klair" "$@"
    EOS
    (bin/"klair").chmod 0755
  end

  def caveats
    <<~EOS
      Klair requires a running LLM backend.

      For OpenAI (default):
        export OPENAI_API_KEY=sk-...

      For Anthropic:
        klair config --provider anthropic
        export ANTHROPIC_API_KEY=sk-ant-...

      For local Ollama:
        brew install ollama
        ollama serve
        ollama pull qwen2.5:14b
        klair config --provider ollama --model qwen2.5:14b

      Ensure kubectl is configured:
        kubectl config get-contexts
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/klair --version")
  end
end
