class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/homebrew-klair/releases/download/v0.2.0/klair-0.2.0-cp311-cp311-macosx_26_0_arm64.whl"
  sha256 "d39e965895064ff50f259ce22fd698a6691d3c8f001740c72722d2c599988308"
  license "MIT"

  depends_on "python@3.11"
  depends_on :macos
  depends_on arch: :arm64

  def install
    # Create virtualenv
    venv = virtualenv_create(libexec, "python3.11")
    
    # Install dependencies using system pip
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "pip", "install",
           "--target=#{libexec}/lib/python3.11/site-packages",
           "langgraph>=0.2.0",
           "langchain-ollama>=0.2.0",
           "langchain-openai>=0.2.0",
           "langchain-anthropic>=0.3.0",
           "langchain-core>=0.3.0",
           "typer>=0.12.0",
           "rich>=13.0.0",
           "pyyaml>=6.0",
           "kubernetes>=30.0.0"
    
    # Copy wheel to proper filename and install
    wheel_name = "klair-#{version}-cp311-cp311-macosx_26_0_arm64.whl"
    wheel_path = buildpath/wheel_name
    cp cached_download, wheel_path
    
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "pip", "install",
           "--target=#{libexec}/lib/python3.11/site-packages",
           "--no-deps",
           wheel_path

    # Create wrapper script
    (bin/"klair").write <<~EOS
      #!/bin/bash
      export PYTHONPATH="#{libexec}/lib/python3.11/site-packages:$PYTHONPATH"
      exec "#{Formula["python@3.11"].opt_bin}/python3.11" -m klair "$@"
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
    assert_match version.to_s, shell_output("#{bin}/klair version")
  end
end
