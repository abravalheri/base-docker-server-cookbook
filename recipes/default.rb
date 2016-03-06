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

include_recipe 'apt' if platform_family?('debian')

include_recipe 'openssh'

include_recipe 'tmux'
include_recipe 'git'
include_recipe 'dotfiles'

package value_for_platform_family(
  %w(debian) => ['vim-nox'],
  %w(rhel fedora) => ['vim-minimal', 'vim-enhanced'],
  'default' => ['vim']
)

package 'xclip'

include_recipe 'ruby-ng::dev'
include_recipe 'python'

docker_service 'default' do
  action [:create, :start]
end

python_pip 'docker-compose'

include_recipe 'dotfiles'
