#!/usr/bin/env bash

export PATH=venv/bin:${PATH}

ansible-lint .

yamllint roles/ config.yml hosts.yml
