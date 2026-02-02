class Klair < Formula
  include Language::Python::Virtualenv

  desc "LangGraph-based agent for Kubernetes troubleshooting"
  homepage "https://github.com/khou/klair"
  url "https://github.com/khou/homebrew-klair/releases/download/v0.1.0/klair-0.1.0.tar.gz"
  sha256 "3558e2531baac1a0ccf19f833260adcb98237be615161294e7c46cc3da7e4606"
  license "MIT"

  depends_on "python@3.11"
  depends_on "rust" => :build  # Required for building some packages like orjson, pydantic-core

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "anthropic" do
    url "https://files.pythonhosted.org/packages/eb/85/6cb5da3cf91de2eeea89726316e8c5c8c31e2d61ee7cb1233d7e95512c31/anthropic-0.77.0.tar.gz"
    sha256 "ce36efeb80cb1e25430a88440dc0f9aa5c87f10d080ab70a1bdfd5c2c5fbedb4"
  end

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/96/f0/5eb65b2bb0d09ac6776f2eb54adee6abe8228ea05b20a5ad0e4945de8aac/anyio-4.12.1.tar.gz"
    sha256 "41cfcc3a4c85d3f05c932da7c26d0201ac36f72abd4435ba90d0464a3ffed703"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/e0/2d/a891ca51311197f6ad14a7ef42e2399f36cf2f9bd44752b3dc4eab60fdc5/certifi-2026.1.4.tar.gz"
    sha256 "ac726dd470482006e014ad384921ed6438c457018f4b3d204aea4281258b2120"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/13/69/33ddede1939fdd074bce5434295f38fae7136463422fe4fd3e0e89b98062/charset_normalizer-3.4.4.tar.gz"
    sha256 "94537985111c35f28720e43603b8e7b43a6ecfb2ce1d3058bbe955b73404e21a"
  end

  resource "click" do
    url "https://files.pythonhosted.org/packages/3d/fa/656b739db8587d7b5dfa22e22ed02566950fbfbcdc20311993483657a5c0/click-8.3.1.tar.gz"
    sha256 "12ff4785d337a1bb490bb7e9c2b1ee5da3112e94a8622f26a6c77f5d2fc6842a"
  end

  resource "distro" do
    url "https://files.pythonhosted.org/packages/fc/f8/98eea607f65de6527f8a2e8885fc8015d3e6f5775df186e443e0964a11c3/distro-1.9.0.tar.gz"
    sha256 "2fa77c6fd8940f116ee1d6b94a2f90b13b5ea8d019b98bc8bafdcabcdd9bdbed"
  end

  resource "docstring-parser" do
    url "https://files.pythonhosted.org/packages/b2/9d/c3b43da9515bd270df0f80548d9944e389870713cc1fe2b8fb35fe2bcefd/docstring_parser-0.17.0.tar.gz"
    sha256 "583de4a309722b3315439bb31d64ba3eebada841f2e2cee23b99df001434c912"
  end

  resource "durationpy" do
    url "https://files.pythonhosted.org/packages/9d/a4/e44218c2b394e31a6dd0d6b095c4e1f32d0be54c2a4b250032d717647bab/durationpy-0.10.tar.gz"
    sha256 "1fa6893409a6e739c9c72334fc65cca1f355dbdd93405d30f726deb5bde42fba"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/01/ee/02a2c011bdab74c6fb3c75474d40b3052059d95df7e73351460c8588d963/h11-0.16.0.tar.gz"
    sha256 "4e35b956cf45792e4caa5885e69fba00bdbc6ffafbfa020300e549b208ee5ff1"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/06/94/82699a10bca87a5556c9c59b5963f2d039dbd239f25bc2a63907a05a14cb/httpcore-1.0.9.tar.gz"
    sha256 "6e34463af53fd2ab5d807f399a9b45ea31c3dfa2276f15a2c3f00afff6e176e8"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/6f/6d/0703ccc57f3a7233505399edb88de3cbd678da106337b9fcde432b65ed60/idna-3.11.tar.gz"
    sha256 "795dafcc9c04ed0c1fb032c2aa73654d8e8c5023a7df64a53f39190ada629902"
  end

  resource "jiter" do
    url "https://files.pythonhosted.org/packages/45/9d/e0660989c1370e25848bb4c52d061c71837239738ad937e83edca174c273/jiter-0.12.0.tar.gz"
    sha256 "64dfcd7d5c168b38d3f9f8bba7fc639edb3418abcc74f22fdbe6b8938293f30b"
  end

  resource "jsonpatch" do
    url "https://files.pythonhosted.org/packages/42/78/18813351fe5d63acad16aec57f94ec2b70a09e53ca98145589e185423873/jsonpatch-1.33.tar.gz"
    sha256 "9fcd4009c41e6d12348b4a0ff2563ba56a2923a7dfee731d004e212e1ee5030c"
  end

  resource "jsonpointer" do
    url "https://files.pythonhosted.org/packages/6a/0a/eebeb1fa92507ea94016a2a790b93c2ae41a7e18778f85471dc54475ed25/jsonpointer-3.0.0.tar.gz"
    sha256 "2b2d729f2091522d61c3b31f82e11870f60b68f43fbc705cb76bf4b832af59ef"
  end

  resource "kubernetes" do
    url "https://files.pythonhosted.org/packages/2c/8f/85bf51ad4150f64e8c665daf0d9dfe9787ae92005efb9a4d1cba592bd79d/kubernetes-35.0.0.tar.gz"
    sha256 "3d00d344944239821458b9efd484d6df9f011da367ecb155dadf9513f05f09ee"
  end

  resource "langchain-anthropic" do
    url "https://files.pythonhosted.org/packages/0d/b6/ac5ee84e15bf79844c9c791f99a614c7ec7e1a63c2947e55977be01a81b4/langchain_anthropic-1.3.1.tar.gz"
    sha256 "4f3d7a4a7729ab1aeaf62d32c87d4d227c1b5421668ca9e3734562b383470b07"
  end

  resource "langchain-core" do
    url "https://files.pythonhosted.org/packages/a2/0e/664d8d81b3493e09cbab72448d2f9d693d1fa5aa2bcc488602203a9b6da0/langchain_core-1.2.7.tar.gz"
    sha256 "e1460639f96c352b4a41c375f25aeb8d16ffc1769499fb1c20503aad59305ced"
  end

  resource "langchain-ollama" do
    url "https://files.pythonhosted.org/packages/73/51/72cd04d74278f3575f921084f34280e2f837211dc008c9671c268c578afe/langchain_ollama-1.0.1.tar.gz"
    sha256 "e37880c2f41cdb0895e863b1cfd0c2c840a117868b3f32e44fef42569e367443"
  end

  resource "langchain-openai" do
    url "https://files.pythonhosted.org/packages/38/b7/30bfc4d1b658a9ee524bcce3b0b2ec9c45a11c853a13c4f0c9da9882784b/langchain_openai-1.1.7.tar.gz"
    sha256 "f5ec31961ed24777548b63a5fe313548bc6e0eb9730d6552b8c6418765254c81"
  end

  resource "langgraph" do
    url "https://files.pythonhosted.org/packages/72/5b/f72655717c04e33d3b62f21b166dc063d192b53980e9e3be0e2a117f1c9f/langgraph-1.0.7.tar.gz"
    sha256 "0cfdfee51e6e8cfe503ecc7367c73933437c505b03fa10a85c710975c8182d9a"
  end

  resource "langgraph-checkpoint" do
    url "https://files.pythonhosted.org/packages/98/76/55a18c59dedf39688d72c4b06af73a5e3ea0d1a01bc867b88fbf0659f203/langgraph_checkpoint-4.0.0.tar.gz"
    sha256 "814d1bd050fac029476558d8e68d87bce9009a0262d04a2c14b918255954a624"
  end

  resource "langgraph-prebuilt" do
    url "https://files.pythonhosted.org/packages/a7/59/711aecd1a50999456850dc328f3cad72b4372d8218838d8d5326f80cb76f/langgraph_prebuilt-1.0.7.tar.gz"
    sha256 "38e097e06de810de4d0e028ffc0e432bb56d1fb417620fb1dfdc76c5e03e4bf9"
  end

  resource "langgraph-sdk" do
    url "https://files.pythonhosted.org/packages/c3/0f/ed0634c222eed48a31ba48eab6881f94ad690d65e44fe7ca838240a260c1/langgraph_sdk-0.3.3.tar.gz"
    sha256 "c34c3dce3b6848755eb61f0c94369d1ba04aceeb1b76015db1ea7362c544fb26"
  end

  resource "langsmith" do
    url "https://files.pythonhosted.org/packages/66/bb/b8a196c9b9a7ca8b8845eaec7dbae35bcfcb0da3068794e76b29211eae2b/langsmith-0.6.7.tar.gz"
    sha256 "d89c604a18fc606b7835d8e7924f7cdbe130ca2207bdff8f989590e50d65b802"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/5b/f5/4ec618ed16cc4f8fb3b701563655a69816155e79e24a17b651541804721d/markdown_it_py-4.0.0.tar.gz"
    sha256 "cb0a2b4aa34f932c007117b194e945bd74e0ec24133ceb5bac59009cda1cb9f3"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "oauthlib" do
    url "https://files.pythonhosted.org/packages/0b/5f/19930f824ffeb0ad4372da4812c50edbd1434f678c90c2733e1188edfc63/oauthlib-3.3.1.tar.gz"
    sha256 "0f0f8aa759826a193cf66c12ea1af1637f87b9b4622d46e866952bb022e538c9"
  end

  resource "ollama" do
    url "https://files.pythonhosted.org/packages/9d/5a/652dac4b7affc2b37b95386f8ae78f22808af09d720689e3d7a86b6ed98e/ollama-0.6.1.tar.gz"
    sha256 "478c67546836430034b415ed64fa890fd3d1ff91781a9d548b3325274e69d7c6"
  end

  resource "openai" do
    url "https://files.pythonhosted.org/packages/b1/6c/e4c964fcf1d527fdf4739e7cc940c60075a4114d50d03871d5d5b1e13a88/openai-2.16.0.tar.gz"
    sha256 "42eaa22ca0d8ded4367a77374104d7a2feafee5bd60a107c3c11b5243a11cd12"
  end

  resource "orjson" do
    url "https://files.pythonhosted.org/packages/70/a3/4e09c61a5f0c521cba0bb433639610ae037437669f1a4cbc93799e731d78/orjson-3.11.6.tar.gz"
    sha256 "0a54c72259f35299fd033042367df781c2f66d10252955ca1efb7db309b954cb"
  end

  resource "ormsgpack" do
    url "https://files.pythonhosted.org/packages/12/0c/f1761e21486942ab9bb6feaebc610fa074f7c5e496e6962dea5873348077/ormsgpack-1.12.2.tar.gz"
    sha256 "944a2233640273bee67521795a73cf1e959538e0dfb7ac635505010455e53b33"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/a1/d4/1fc4078c65507b51b96ca8f8c3ba19e6a61c8253c72794544580a7b6c24d/packaging-25.0.tar.gz"
    sha256 "d443872c98d677bf60f6a1f2f8c1cb748e8fe762d2bf9d3148b5599295b0fc4f"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/69/44/36f1a6e523abc58ae5f928898e4aca2e0ea509b5aa6f6f392a5d882be928/pydantic-2.12.5.tar.gz"
    sha256 "4d351024c75c0f085a9febbb665ce8c0c6ec5d30e903bdb6394b7ede26aebb49"
  end

  resource "pydantic_core" do
    url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
    sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
  end

  resource "Pygments" do
    url "https://files.pythonhosted.org/packages/b0/77/a5b8c569bf593b0140bde72ea885a803b82086995367bf2037de0159d924/pygments-2.19.2.tar.gz"
    sha256 "636cb2477cec7f8952536970bc533bc43743542f70392ae026374600add5b887"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/66/c0/0c8b6ad9f17a802ee498c46e004a0eb49bc148f2fd230864601a86dcf6db/python-dateutil-2.9.0.post0.tar.gz"
    sha256 "37dd54208da7e1cd875388217d5e00ebd4179249f90fb72437e91a35459a0ad3"
  end

  resource "PyYAML" do
    url "https://files.pythonhosted.org/packages/05/8e/961c0007c59b8dd7729d542c61a4d537767a59645b82a0b521206e1e25c2/pyyaml-6.0.3.tar.gz"
    sha256 "d76623373421df22fb4cf8817020cbb7ef15c725b9d5e45f17e189bfc384190f"
  end

  resource "regex" do
    url "https://files.pythonhosted.org/packages/0b/86/07d5056945f9ec4590b518171c4254a5925832eb727b56d3c38a7476f316/regex-2026.1.15.tar.gz"
    sha256 "164759aa25575cbc0651bef59a0b18353e54300d79ace8084c818ad8ac72b7d5"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/c9/74/b3ff8e6c8446842c3f5c837e9c3dfcfe2018ea6ecef224c710c85ef728f4/requests-2.32.5.tar.gz"
    sha256 "dbba0bac56e100853db0ea71b82b4dfd5fe2bf6d3754a8893c3af500cec7d7cf"
  end

  resource "requests-oauthlib" do
    url "https://files.pythonhosted.org/packages/42/f2/05f29bc3913aea15eb670be136045bf5c5bbf4b99ecb839da9b422bb2c85/requests-oauthlib-2.0.0.tar.gz"
    sha256 "b3dffaebd884d8cd778494369603a9e7b58d29111bf6b41bdc2dcd87203af4e9"
  end

  resource "requests-toolbelt" do
    url "https://files.pythonhosted.org/packages/f3/61/d7545dafb7ac2230c70d38d31cbfe4cc64f7144dc41f6e4e4b78ecd9f5bb/requests-toolbelt-1.0.0.tar.gz"
    sha256 "7681a0a3d047012b5bdc0ee37d7f8f07ebe76ab08caeccfc3921ce23c88d5bc6"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/74/99/a4cab2acbb884f80e558b0771e97e21e939c5dfb460f488d19df485e8298/rich-14.3.2.tar.gz"
    sha256 "e712f11c1a562a11843306f5ed999475f09ac31ffb64281f73ab29ffdda8b3b8"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "tenacity" do
    url "https://files.pythonhosted.org/packages/0a/d4/2b0cd0fe285e14b36db076e78c93766ff1d529d70408bd1d2a5a84f1d929/tenacity-9.1.2.tar.gz"
    sha256 "1169d376c297e7de388d18b4481760d478b0e99a777cad3a9c86e556f4b697cb"
  end

  resource "tiktoken" do
    url "https://files.pythonhosted.org/packages/7d/ab/4d017d0f76ec3171d469d80fc03dfbb4e48a4bcaddaa831b31d526f05edc/tiktoken-0.12.0.tar.gz"
    sha256 "b18ba7ee2b093863978fcb14f74b3707cdc8d4d4d3836853ce7ec60772139931"
  end

  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/27/89/4b0001b2dab8df0a5ee2787dcbe771de75ded01f18f1f8d53dedeea2882b/tqdm-4.67.2.tar.gz"
    sha256 "649aac53964b2cb8dec76a14b405a4c0d13612cb8933aae547dd144eacc99653"
  end

  resource "typer" do
    url "https://files.pythonhosted.org/packages/36/bf/8825b5929afd84d0dabd606c67cd57b8388cb3ec385f7ef19c5cc2202069/typer-0.21.1.tar.gz"
    sha256 "ea835607cd752343b6b2b7ce676893e5a0324082268b48f27aa058bdb7d2145d"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/c7/24/5f1b3bdffd70275f6661c76461e25f024d5a38a46f04aaca912426a2b1d3/urllib3-2.6.3.tar.gz"
    sha256 "1b62b6884944a57dbe321509ab94fd4d3b307075e0c2eae991ac71ee15ad38ed"
  end

  resource "uuid_utils" do
    url "https://files.pythonhosted.org/packages/57/7c/3a926e847516e67bc6838634f2e54e24381105b4e80f9338dc35cca0086b/uuid_utils-0.14.0.tar.gz"
    sha256 "fc5bac21e9933ea6c590433c11aa54aaca599f690c08069e364eb13a12f670b4"
  end

  resource "websocket-client" do
    url "https://files.pythonhosted.org/packages/2c/41/aa4bf9664e4cda14c3b39865b12251e8e7d239f4cd0e3cc1b6c2ccde25c1/websocket_client-1.9.0.tar.gz"
    sha256 "9e813624b6eb619999a97dc7958469217c3176312b3a16a4bd1bc7e08a46ec98"
  end

  resource "xxhash" do
    url "https://files.pythonhosted.org/packages/02/84/30869e01909fb37a6cc7e18688ee8bf1e42d57e7e0777636bd47524c43c7/xxhash-3.6.0.tar.gz"
    sha256 "f0162a78b13a0d7617b2845b90c763339d1f1d82bb04a4b07f4ab535cc5e05d6"
  end

  resource "zstandard" do
    url "https://files.pythonhosted.org/packages/fd/aa/3e0508d5a5dd96529cdc5a97011299056e14c6505b678fd58938792794b1/zstandard-0.25.0.tar.gz"
    sha256 "7713e1179d162cf5c7906da876ec2ccb9c3a9dcbdffef0cc7f70c3667a205f0b"
  end

  def install
    # Create virtualenv and install dependencies first
    venv = virtualenv_create(libexec, "python3.11")
    venv.pip_install resources
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
    assert_match version.to_s, shell_output("#{bin}/klair version")
  end
end
