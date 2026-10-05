# Overseer Homebrew tap

Install the standalone Overseer terminal preview:

```sh
brew install Jeccoman/tap/overseer
overseer-tui
```

Supported for this preview: Apple Silicon Mac and Ubuntu 24.04-compatible Linux x64. Linux needs the ALSA runtime (libasound2t64 on Ubuntu 24.04). Intel Mac and Linux ARM are not supported by this formula.

The formula downloads prebuilt executables from the [public downloads repository](https://github.com/Jeccoman/overseer-downloads). No Rust build is needed. Product source remains private.

Mac builds are not Developer ID signed/notarized. This is a preview with existing launch-readiness findings; Windows ZIP downloads are available in the downloads repository.

Press F1 for help, Ctrl+O for installed Ollama models, and Ctrl+Q to quit. Configure cloud providers in Settings. Models are separate installations.

Update with `brew update` and `brew upgrade overseer`; uninstall with `brew uninstall overseer`. Uninstall keeps application data.
