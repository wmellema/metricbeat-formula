{% if grains['os'] == "Debian" %}

ensure apt can handle https transport for metricbeat:
  pkg.installed:
    - name: apt-transport-https

{% endif %}

elastic-7.x:
  pkgrepo.managed:
    {% if grains['os'] == "CentOS" %}
    - humanname: Elastic repository for 7.x packages
    - baseurl: https://artifacts.elastic.co/packages/7.x/yum
    - gpgcheck: 1
    - type: rpm-md
    - gpgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    {% if grains['os'] == "Debian" %}
    - name: deb https://artifacts.elastic.co/packages/7.x/apt stable main
    - file: /etc/apt/sources.list.d/elasticsearch.list
    - key_url: https://artifacts.elastic.co/GPG-KEY-elasticsearch
    {% endif %}
