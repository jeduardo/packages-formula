{# Installing the packages we want to have #}
{%- for package, options in salt['pillar.get']('packages:present', {}).items() %}
install-package-{{ package }}:
  pkg.installed:
    - name: {{ package }}
    {%- if options %}
    {%- for item, value in options.items() %}
    - {{ item }}: {{ value }}
    {%- endfor %}
    {%- endif %}
{%- endfor %}

{# Removing the packages we don't want to have. #}
{%- for package, options in salt['pillar.get']('packages:absent', {}).items() %}
remove-package-{{ package }}:
  pkg.removed:
    - name: {{ package }}
    {%- if options %}
    {%- for item, value in options.items() %}
    - {{ item }}: {{ value }}
    {%- endfor %}
    {%- endif %}

{%- endfor %}
