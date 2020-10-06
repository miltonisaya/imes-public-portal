set :stage, :production
set :branch, "master"

server "172.16.18.157", user: "deploy", roles: %w{web app db}, primary: true
set :deploy_to, "/var/www/html/imes-public-portal"

server "172.16.18.157",
  user: "deploy",
  roles: %w{web app},
  ssh_options: { forward_agent: true,user: fetch(:user), keys: %w(~/.ssh/id_rsa) }

set :enable_ssl, false