name 'base-docker-server'
version '0.1.0'
license 'Mozilla Public License, v. 2.0 (http://mozilla.org/MPL/2.0/)'

maintainer 'Anderson Bravalheri'
maintainer_email 'andersonbravalheri@gmail.com'

source_url 'https://github.com/abravalheri/base-docker-server-cookbook'
issues_url 'https://github.com/abravalheri/base-docker-server-cookbook/issues'

description 'Wrapper cookbook that installs/configures a docker-server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))

chef_version '>= 12.1' if respond_to?(:chef_version)

depends 'apt', '~> 6.1.0'
depends 'openssh'
depends 'ruby-ng', '~> 0.3.0'
depends 'poise-python', '~> 1.6.0'
depends 'docker', '~> 2.15.6'

depends 'dotfiles'

supports 'ubuntu'
