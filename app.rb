require 'sinatra'
require 'haml'

module Haml 
  module Filters 
    # Forces RDiscount to process with Smarty Pants. 
    module Smartypants 
      include ::Haml::Filters::Base 
      lazy_require 'rdiscount' 
      def render(text) 
        ::RDiscount.new(text, :smart).to_html 
      end 
    end 
  end 
end

APP_ROOT = File.join(File.dirname(__FILE__))
require 'mo'

set :public, "#{APP_ROOT}/public"
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  @mos = Mo.all
  haml :index
end