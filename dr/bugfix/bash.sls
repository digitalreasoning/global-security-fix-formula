bash:
  pkg.latest:
    - name: bash
    - unless: bash_is_secure.sh
