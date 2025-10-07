# Powerlevel10K Extensions (p10k-ext)

Work in progress. These are some extensions for [powerlevel10k](https://github.com/romkatv/powerlevel10k) for random things I use that I want as part of my prompt.

I use rainbow base16 colors, so that's how I tend to write things by default. Can be updated to support other themes in the future (based on issues/feedback).

Powerlevel10K is designed to be extensible and support custom segments, so no need to fork it, just follow the [extensible](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#extensible) guide and hope for the best.

## Using

Install the plugin using your favorite package manager and enable it.

```sh
# oh-my-zsh
git clone https://github.com/scaryrawr/p10k-ext $ZSH_CUSTOM/plugins/p10k-ext
plugins=(... p10k-ext ...)
```

```sh
# antidote
antidote install scaryrawr/p10k-ext
```

## Available Segments

| Segment | Description |
|---------|-------------|
| `codespace_name` | Displays the GitHub Codespace name (without the random suffix) when running in a Codespace environment |

## Testing Segments

To see how a segment will look in the current session, you can update `POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS` and reload:

```sh
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS+=codespace_name
p10k reload
```

To have it always a part of your prompt, you can modify your `~/.p10k.zsh` for the `POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS` array to include the segment:

```sh
typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
  # existing entries...
  codespace_name
)
```
