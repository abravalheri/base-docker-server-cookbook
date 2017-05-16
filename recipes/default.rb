#
# Cookbook Name:: docker-server
# Recipe:: default
#
# Author:: Anderson Bravalheri <andersonbravalheri@gmail.com>
# Copyright (c) 2016, Anderson Bravalheri
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

if platform_family?('debian')
  include_recipe 'apt'
  include_recipe 'ruby-ng'

  directory '/var/run/sshd' do
    # --> Bug fix for openssh
    # Missing privilege separation directory: /var/run/sshd
    # https://bugs.launchpad.net/ubuntu/+source/openssh/+bug/45234
    mode '0755'
    owner 'root'
    group 'root'
  end
else
  package 'ruby'
end

include_recipe 'openssh'

python_runtime '2'
python_runtime '3'

docker_service 'default' do
  action [:create, :start]
end

python_package 'docker-compose'

include_recipe 'dotfiles'
