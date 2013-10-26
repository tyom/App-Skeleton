require 'bundler'
Bundler.require
require './server'

Slim::Engine.set_default_options attr_delims: { '(' => ')' }

configure :development do
  Bundler.require :development

  use Rack::Reloader

  use Rack::LiveReload, animate: true, no_swf: true
  Slim::Engine.set_default_options pretty: true
end

register Sinatra::AssetPack

assets {
  serve '/js',     from: 'app/javascripts'
  serve '/css',    from: 'app/stylesheets'
  serve '/images', from: 'public/images'

  css :main, [
    '/css/main.css'
  ]

  js :libs, [
    'bower_components/angular/angular.js',
  ]

  js :app, [
    '/js/**/*.js',
  ]

  # js_compression  :jsmin     # :jsmin | :yui | :closure | :uglify
  css_compression :sass      # :simple | :sass | :yui | :sqwish
}

run Sinatra::Application
