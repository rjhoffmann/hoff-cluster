{ pkgs, ... }:

{
  packages = [
    pkgs.kubectl
    pkgs.talosctl
    pkgs.talhelper
    pkgs.sops
    pkgs.fluxcd
    pkgs.age
  ];

  env = {
    KUBECONFIG = "$DEVENV_ROOT/kubeconfig";
    TALOSCONFIG = "$DEVENV_ROOT/talos/clusterconfig/talosconfig";
    SOPS_AGE_KEY_FILE = "$HOME/.config/sops/age/keys.txt";
  };
}
