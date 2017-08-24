{# Installing the packages we want to have #}
install-packages:
  pkg.installed:
    - pkgs: {{ salt['pillar.get']('packages:present', []) }}

{# Removing the packages we don't want to have. #}
remove-packages:
  pkg.absent:
    - pkgs: {{ salt['pillar.get']('packages:absent', []) }}
