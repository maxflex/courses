server '46.101.250.213', user: 'root', roles: %w{app db web}
# server 'example.com', user: 'deploy', roles: %w{app web}, other_property: :other_value
# server 'db.example.com', user: 'deploy', roles: %w{db}

role :app, %w{root@46.101.250.213}
role :web, %w{root@46.101.250.213}
role :db, %w{root@46.101.250.213}


set :ssh_options, {
  forward_agent: false,
  auth_methods: %w(password),
  user: 'root',
  password: 'lp184005',
}
