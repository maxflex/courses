listen "unix:/var/run/courses.sock"
worker_processes 1
preload_app true
user "rails"
working_directory "/home/rails/courses/current"
pid "/var/run/courses.pid"
stderr_path "/var/log/unicorn/courses.log"
stdout_path "/var/log/unicorn/courses.log"
