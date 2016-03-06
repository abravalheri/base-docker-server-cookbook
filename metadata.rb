name 'base-docker-server'
version '0.1.0'
license 'Mozilla Public License, v. 2.0 (http://mozilla.org/MPL/2.0/)'

maintainer 'Anderson Bravalheri'
maintainer_email 'andersonbravalheri@gmail.com'

source_url 'https://github.com/abravalheri/base-docker-server-cookbook'
issues_url 'https://github.com/abravalheri/base-docker-server-cookbook/issues'

description 'Wrapper cookbook that installs/configures a docker-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

depends 'apt', '~> 3.0.0'
depends 'openssh', '~> 1.6.1'
depends 'tmux', '~> 1.5.0'
depends 'git', '~> 4.3.7'
depends 'ruby-ng', '~> 0.3.0'
depends 'python', '~> 1.4.6'
depends 'docker', '~> 2.5.8'

depends 'dotfiles'

supports 'ubuntu'
