bash:
  pkg.latest
  unless:
    bash_is_secure.sh
