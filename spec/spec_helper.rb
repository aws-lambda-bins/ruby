require 'docker'
require 'serverspec'

set :backend, :docker
set :docker_url, ENV['DOCKER_HOST'] || 'unix:///var/run/docker.sock'
set :docker_image, "aws_lambda_bins/ruby:2.4.0"
