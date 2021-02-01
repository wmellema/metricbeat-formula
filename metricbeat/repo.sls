elastic-7.x:
  pkgrepo.managed:
    - humanname: Elastic repository for 7.x packages
    - baseurl: https://artifacts.elastic.co/packages/7.x/yum
    - gpgcheck: 1
    - type: rpm-md
    - gkgkey: https://artifacts.elastic.co/GPG-KEY-elasticsearch
