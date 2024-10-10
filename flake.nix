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

  outputs = {self, ...} @ inputs: with inputs; {
    bat = "${sublime}/Dracula.tmTheme";
    k9s = "${k9s}/skins/dracula.yaml";
    sublime = self.bat;
    wezterm = "${wezterm}/dracula.toml";
    zellij = "${zellij}/dracula.kdl";
  };
}
