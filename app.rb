require 'sinatra'
require 'haml'
require 'rdiscount'

APP_ROOT = File.join(File.dirname(__FILE__))
require 'mo'

set :public, "#{APP_ROOT}/public"
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  @mos = Mo.all
  haml :index
end