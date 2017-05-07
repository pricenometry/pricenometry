# paths
app_path = '~/pricenometry'
working_directory "#{app_path}/current"
pid "#{app_path}/current/tmp/pids/unicorn.pid"

worker_processes 2

timeout 30

# Specify path to socket unicorn listens to,
# we will use this in our nginx.conf later

# listen
listen "#{app_path}/current/tmp/sockets/unicorn.sock", backlog: 64

# Set process id path
pid "#{working_directory}/tmp/pids/unicorn.pid"

# Set log file paths
stderr_path "#{working_directory}/log/unicorn.stderr.log"
stdout_path "#{working_directory}/log/unicorn.stdout.log"
