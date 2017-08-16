# Tmux jq

Plugin for display json resources in  Tmux copy mode. `tmux-jq` uses curl and jq to get the http resource and shows it by using jq.

### Key bindings

In tmux copy mode:

- `prefix + j` perform GET and display the http resource.

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

    run-shell ~/clone/path/open.tmux

Reload TMUX environment:

    # type this in terminal
    $ tmux source-file ~/.tmux.conf

You should now be able to use the plugin.
### License

[Apache](LICENSE.md)

