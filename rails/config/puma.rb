max_threads_count = ENV.fetch('RAILS_MAX_THREADS', 5)
min_threads_count = ENV.fetch('RAILS_MIN_THREADS') { max_threads_count }
threads min_threads_count, max_threads_count

environment ENV.fetch('RAILS_ENV') { 'development' }
port        ENV.fetch('PORT', 3000)

app_root = File.expand_path('..', __dir__)
bind "unix://#{app_root}/tmp/sockets/puma.sock"
pidfile ENV.fetch('PIDFILE') { "#{app_root}/tmp/pids/server.pid" }

plugin :tmp_restart
