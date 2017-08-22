{# Installing the packages we want to have #}
{% for package in salt['pillar.get']('packages:present', {}) %}
install-package-{{package}}:
  pkg.installed:
    - name: {{package}}
{% endfor %}

{# Removing the packages we don't want to have. #}
{% for package in salt['pillar.get']('packages:absent', {}) %}
remove-package-{{package}}:
  pkg.removed:
    - name: {{package}}
{% endfor %}
