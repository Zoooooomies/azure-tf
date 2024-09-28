with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    git
    go
    go-task
    terraform
  ];
  shellHook = ''
    set -a
    set +a
  '';
}