#/bin/bash
{% for ip in groups.zk %}
{% if  ip  == inventory_hostname %}
echo {{ loop.index - 1 }} > /opt/apps/zookeeper-3.4.13/data/myid
{% endif %}
{% endfor %}

