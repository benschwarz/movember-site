require 'sinatra'
require 'haml'

set :public, File.join(File.dirname(__FILE__), 'public')
set :haml, {:format => :html5, :attr_wrapper => '"'}

get '/' do
  haml :index
end


__END__
@@index
!!!
%html{:lang => "en-au"}
  %head
    %title Ben Schwarz's movember site
    %meta{:name => "author", :content => "Ben Schwarz"}
    /[if IE]
      %script{:src => " http://html5shiv.googlecode.com/svn/trunk/html5.js"}
    
    %link{:rel => "stylesheet", :href => "/css/reset.css", :type => "text/css", :media => "screen"}
    %link{:rel => "stylesheet", :href => "/css/base.css", :type => "text/css", :media => "screen"}
  %body
    %section#wrapper
      %header
        %h1 
          Ben Schwarz's
          %em
            Mo'vember charity site
      