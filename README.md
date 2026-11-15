### Hexlet tests and linter status:
[![Actions Status](https://github.com/Pro100Maks88/devops-engineer-from-scratch-project-315/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Pro100Maks88/devops-engineer-from-scratch-project-315/actions)

Bulletin board service.

## About this repository

This repository contains the Ansible-based infrastructure-as-code setup used to
deploy the application from [Pro100Maks88/project-devops-deploy](https://github.com/Pro100Maks88/project-devops-deploy)
to a Yandex Cloud VM: server provisioning, Docker, Nginx + Let's Encrypt (HTTPS),
S3-compatible object storage, and automated deploy/update/rollback via `Makefile`.

Created as part of Hexlet's "Bulletin board" assig

## Deployment Requirements

### Control Node (Host Machine)
- **OS:** Linux / macOS
- **Python:** 3.10+
- **Ansible:** 2.15+

### Target Server (Managed Node)
- **OS:** Ubuntu 22.04 / 24.04 LTS
- **Ports Open:** 80 (HTTP), 443 (HTTPS), 22 (SSH)
- **Access:** User with `sudo` privileges and SSH key authorization
- **Pre-installed software:** Python 3 (Docker and Nginx are provisioned automatically via Ansible roles)

## Доступ к сервису

Приложение доступно по адресу: **http://bulletin-board.mooo.com**

- DNS-провайдер: freedns.afraid.org
- Тип записи: A
- IP-адрес: 130.193.58.173
- Проверка DNS: `dig +short bulletin-board.mooo.com @1.1.1.1`
- Статус: HTTP/1.1 200 OK
