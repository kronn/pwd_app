#!/usr/bin/env ruby
# encoding: utf-8
# vim:ft=ruby
require 'rubygems'
require 'sinatra'

root_dir = File.dirname(__FILE__)
$LOAD_PATH << root_dir

# set :environment, ENV['RACK_ENV'].to_sym
set :environment, :development
set :root,        root_dir
set :app_file,    "#{root_dir}/app/pwd.rb"
disable :run

require "app/pwd"

run Sinatra::Application
