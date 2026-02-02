class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/homebrew-klair/releases/download/v0.2.0/klair-0.2.0.tar.gz"
  sha256 "0029f58d1261b3dfb36e9740ac6c95e196dee2bf50bbfccf52fa029814fa9223"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Create virtualenv with pip
    venv = virtualenv_create(libexec, "python3.11")
    
    # Install pip in the virtualenv
    system libexec/"bin/python", "-m", "ensurepip", "--upgrade"
    
    # Install the package with all dependencies
    system libexec/"bin/pip", "install", "--upgrade", "pip"
    system libexec/"bin/pip", "install", buildpath
    
    # Link the klair binary
    bin.install_symlink libexec/"bin/klair"
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
