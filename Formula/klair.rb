class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/homebrew-klair/releases/download/v0.2.0/klair-0.2.0.tar.gz"
  sha256 "f08a2c5fe2302a73e0805a94e0a51a8c13a7a88a5d67f04ed61d92715f3321c0"
  license "MIT"

  depends_on "python@3.11"

  def install
    # Use system python's pip to install into a virtualenv
    venv = virtualenv_create(libexec, "python3.11")
    
    # Install the package with dependencies using the formula's python
    system Formula["python@3.11"].opt_bin/"python3.11", "-m", "pip", "install",
           "--target=#{libexec}/lib/python3.11/site-packages",
           "--no-deps", "."
    
    # Install dependencies
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
