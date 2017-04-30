{% for package in salt['pillar.get']('packages:names', []) %}

package-install-{{package}}:
  pkg.installed:
    - name: {{package}}

{% endfor %}
