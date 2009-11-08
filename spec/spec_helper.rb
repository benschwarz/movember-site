require 'rubygems'
require 'sinatra'
require 'spec'
require 'spec/interop/test'
require 'rack/test'

require File.join(File.dirname(__FILE__), '..', 'app')

set :environment, :test
set :views, "#{APP_ROOT}/views"
set :public, "#{APP_ROOT}/views"
