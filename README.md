# Some games automation

## Ansible

### Setup
* Install [ansible](http://docs.ansible.com/ansible/latest/intro_installation.html) 
* Create hosts.yml from hostsexample

### Usage 
`ansible-playbook -i inventories/production/hosts.yml -l HOST plb_example.yml`

## Terraform

### Setup

* Create keys
* Create provider.tf from provider example
* Install [terraform](https://www.terraform.io/intro/getting-started/install.html)

### Usage

```sh
terraform init
terraform plan -out the.plan
terraform apply the.plan
```