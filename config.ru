require 'rubygems'
require 'bundler/setup'
require './lib/text_analysis.rb'
require './lib/benchmarks.rb'
require './lib/logger.rb'
require './lib/algorithms.rb'
require './app'

run Sinatra::Application
