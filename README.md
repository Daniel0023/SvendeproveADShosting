# ADS Webserver Automation
Repository that contains automation code for webserver automation

Every playbook will be excecuted from Ansible Tower where workflows resides. 

For code structure there has been used Ansible Galaxy and Ansible Roles which helps keeping the code dynamic and easy to change.
Down below is a view of how the code is strutured.

```
Deploymentv2/
├── clusterremoval
│   ├── getcontrolplanefacts.yml
│   ├── removal-netbox.yml
│   ├── removal-prometheustarget.yml
│   ├── remove-dns.yml
│   ├── remove-frominventory.yml
│   ├── remove-gitlab.yml
│   ├── remove-loadbalancer.yml
│   ├── remove-network.yml
│   └── remove-vm.yml
├── defaults
│   └── enabledtasks.yml
├── Playbooks
│   ├── addtoinventory.yml
│   ├── deploycontrolplane.yml
│   ├── deploynodes.yml
│   ├── generateprerequisits.yml
│   ├── gitlab.yml
│   ├── loadbalancer.yml
│   ├── network.yml
│   ├── prometheusfederated.yml
│   ├── repopull.yml
│   └── webhook.yml
├── roles
│   ├── controlplandeployment
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   │   ├── nginx-sync-script.sh
│   │   │   ├── nginx-sync.service
│   │   │   └── nginx-sync.sh
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   ├── add-controlplane-to-inventory.yml
│   │   │   ├── artifacts.yml
│   │   │   ├── deployserver.yml
│   │   │   ├── docker.yml
│   │   │   ├── facts.yml
│   │   │   ├── gitlab.yml
│   │   │   ├── main copy.yml
│   │   │   ├── main.yml
│   │   │   ├── netplan.yml
│   │   │   ├── nginx.yml
│   │   │   ├── ntp.yml
│   │   │   └── prometheus.yml
│   │   ├── templates
│   │   │   ├── docker-compose.yaml.j2
│   │   │   ├── nginx-sync.conf.j2
│   │   │   ├── prometheusbasconfig.yml.j2
│   │   │   └── prometheustarget.j2
│   │   ├── tests
│   │   │   ├── inventory
│   │   │   └── test.yml
│   │   └── vars
│   │       └── main.yml
│   ├── nodedeployment
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   │   ├── foo
│   │   │   │   └── node_exporter
│   │   │   ├── node_exporter
│   │   │   ├── node_exporter-1.3.1.linux-amd64
│   │   │   │   ├── LICENSE
│   │   │   │   └── NOTICE
│   │   │   └── node_exporter-1.3.1.linux-amd64.tar
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   ├── add-controlplane-to-inventory.yml
│   │   │   ├── artifacts.yml
│   │   │   ├── deployserver.yml
│   │   │   ├── facts.yml
│   │   │   ├── main copy.yml
│   │   │   ├── main.yml
│   │   │   ├── netplan.yml
│   │   │   ├── nginx.yml
│   │   │   ├── ntp.yml
│   │   │   └── prometheus.yml
│   │   ├── templates
│   │   │   └── prometheussystemd.j2
│   │   ├── tests
│   │   │   ├── inventory
│   │   │   └── test.yml
│   │   └── vars
│   │       └── main.yml
│   ├── prerequisites
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   ├── adddns.yml
│   │   │   ├── addtoinventory.yml
│   │   │   ├── createvmfolder.yml
│   │   │   ├── generateclusterid.yml
│   │   │   ├── generatecontrolplanefacts.yml
│   │   │   ├── generatehostnames.yml
│   │   │   ├── generatenodefacts.yml
│   │   │   ├── generatesnatip.yml
│   │   │   ├── gitlab.yml
│   │   │   ├── main.yml
│   │   │   └── netbox.yml
│   │   ├── templates
│   │   ├── tests
│   │   │   ├── inventory
│   │   │   └── test.yml
│   │   └── vars
│   │       └── main.yml
│   ├── prometheusfed
│   │   ├── defaults
│   │   │   └── main.yml
│   │   ├── files
│   │   ├── handlers
│   │   │   └── main.yml
│   │   ├── meta
│   │   │   └── main.yml
│   │   ├── README.md
│   │   ├── tasks
│   │   │   └── main.yml
│   │   ├── templates
│   │   │   └── promtarget.j2
│   │   ├── tests
│   │   │   ├── inventory
│   │   │   └── test.yml
│   │   └── vars
│   │       └── main.yml
│   └── removal
│       ├── defaults
│       │   └── main.yml
│       ├── files
│       ├── handlers
│       │   └── main.yml
│       ├── meta
│       │   └── main.yml
│       ├── README.md
│       ├── tasks
│       │   ├── main.yml
│       │   ├── netbox.yml
│       │   └── prometheustarget.yml
│       ├── templates
│       ├── tests
│       │   ├── inventory
│       │   └── test.yml
│       └── vars
│           └── main.yml
└── templates
    └── lbconfig.j2
```
