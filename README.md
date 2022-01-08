# Student Robotics Ansible

## Usage

This should be used as a standard ansible playbook, e.g

```sh
source venv/bin/activate
ansible-playbook config.yml
```

You will need to have access to the servers that you wish to configure.

Also useful:

- Ask for sudo password: `ansible-playbook config.yml -k`
- Limit to a specific host: `ansible-playbook config.yml --limit host.example.com`
- Run in check mode: `ansible-playbook config.yml --check --diff`
- Only run specific tags in a role: `ansible-playbook config.yml --tags firewall`

## Roles

### nft-firewall

**Does not contain Non-Fungible Tokens** 🙈

Installs and enables a network firewall.

Usage:

- Create a firewall config in `roles/nft-firewall/templates/nftables/FQDN.conf`
  - You should probably inherit from the `base.conf` template.

Tags:

- `firewall` - Install and configure the firewall

### srobo-server

**Dependencies: `nft-firewall`**

The base configuration for a Student Robotics server. All servers should have this role, even if inherited.

- Basic system utlities
- Security
- SSH access
- MOTD

Tags:

- `hostname` - Set up the hostname and /etc/hosts files
- `security` - Secure the server
