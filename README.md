# Tmux jq

Plugin for doing pretty-printing json resources in the Tmux copy mode. `tmux-jq` uses `curl` and `jq` to get the http resource of  links saved in the tmux buffer and shows it by using jq.

### Key bindings

In tmux copy mode:

- `prefix + j` performs GET and displays the http resource.

### Examples

In copy mode:

- highlight `http://example.com/path` then press ``prefix + j`` 
- the json that have been found will be shown.

### Installation with [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm) (recommended)

Add plugin to the list of TPM plugins in `.tmux.conf`:

    set -g @plugin 'minhtuannguyen/tmux-jq'

Hit `prefix + I` to fetch the plugin and source it. You should now be able to
use the plugin.

### Manual Installation

Clone the repo:

    $ git clone https://github.com/minhtuannguyen/tmux-jq.git ~/clone/path

Add this line to the bottom of `.tmux.conf`:

    run-shell ~/clone/path/jq.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.
### License

[Apache](LICENSE.md)

