#
# Cookbook Name:: docker-server
# Attributes:: default
#
# Author:: Anderson Bravalheri <andersonbravalheri@gmail.com>
# Copyright (c) 2016, Anderson Bravalheri
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

# openssh
#
# default values (secure by default) are described in:
# http://manpages.ubuntu.com/manpages/hardy/man5/sshd_config.5.html
{
  protocol: 2,
  login_grace_time: 60,
  permit_root_login: 'no',
  allow_agent_forwarding: 'yes',
  x11_forwarding: 'yes',
  accept_env: 'LANG LC_* GIT_*'
}.each { |k, v| default['openssh']['server'][k.to_s] = v.to_s }

# tmux
{
  version: '2.1',
  install_method: 'source',
  checksum: '31564e7bf4bcef2defb3cb34b9e596bd43a3937cad9e5438701a81a5a9af6176'
}.each { |k, v| default['tmux'][k.to_s] = v.to_s }
default['tmux']['session_opts']['prefix'] = 'C-b'

# ruby
default['ruby-ng']['ruby_version'] = '2.3'
