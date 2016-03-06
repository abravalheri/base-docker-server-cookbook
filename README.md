# base-docker-server
Custom Linux configuration for running docker. Also includes default dotfiles for `tmux`, `vim`, `bash` and `git`, for ssh sessions.

## Platforms
Tested on Ubuntu 14.04

## Recipes

### `base-docker-server::default`
Install and configure `xclip`, `tmux`, `git`, `vim`, `openssh` (server), `ruby`, `python`, `docker` and `docker-compose`.

## Standalone mode
In order to use this recipe to provision a machine, `git` and `knife-zero` can be used ([reference](http://knife-zero.github.io/20_getting_started/)).

1. Create ssh keys, copy it to the target machine `~/.ssh/know_hosts`
(see [`ssh-copy-id`](http://www.lindonslog.com/linux-unix/ssh-keygen-keys/))
and launch [`ssh-agent`](https://help.github.com/articles/working-with-ssh-key-passphrases/).
2. Install knife-zero gem (`chef gem install knife-zero` using `ChefDK`)
3. Clone this repo & `cd` into it
4. `berks install`
5. `berks vendor .chef/cookbooks`
  - This repo contains a `.chef` directory designed to be used as a local `chef-repo` for `knife` and `chef-zero`. You can use another directory, changing the path passed to `berks vendor`
6. `knife zero bootstrap FQDN_OR_IP -x SSH_USER -r base-docker-server`

Please make sure to have an IP for your machine when using Vagrant ([Host-Only Networking reference](http://christophermaier.name/blog/2010/09/01/host-only-networking-with-virtualbox)).
