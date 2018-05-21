setup() {
  source /var/batslib/batslib.bash
}

check_git_init() {
  grep "[core]" */.git/config
}

@test "Check for git init" {
  run check_git_init
  [ "$status" -eq 0 ]
}