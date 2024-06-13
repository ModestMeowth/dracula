{
  inputs = {
    sublime.url = "github:dracula/sublime";
    sublime.flake = false;

    wezterm.url = "github:dracula/wezterm";
    wezterm.flake = false;

    zellij.url = "github:dracula/zellij";
    zellij.flake = false;

    k9s.url = "github:derailed/k9s";
    k9s.flake = false;
  };

  outputs = { ... } @inputs: {
    k9s = "${inputs.k9s}";
    sublime = "${inputs.sublime}";
    wezterm = "${inputs.wezterm}";
    zellij = "${inputs.zellij}";
  };
}
