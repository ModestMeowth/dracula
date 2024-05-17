{
  inputs.sublime.url = "github:dracula/sublime";
  inputs.sublime.flake = false;

  inputs.wezterm.url = "github:dracula/wezterm";
  inputs.wezterm.flake = false;

  inputs.zellij.url = "github:dracula/zellij";
  inputs.zellij.flake = false;

  outputs = { ... } @inputs: {
    sublime = "${inputs.sublime}";
    wezterm = "${inputs.wezterm}";
    zellij = "${inputs.zellij}";
  };
}
