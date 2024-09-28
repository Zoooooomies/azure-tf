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
    source env.sh
    echo $TEST_VAR
    set +a
  '';
}