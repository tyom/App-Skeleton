interactor :off

guard 'livereload' do
  watch(%r{views/.+\.(erb|haml|slim)$})
  watch(%r{app/.+\.(js|coffee)})
  watch(%r{app/styles(.+)\.scss}) { |m| "public/css/#{m[1]}.css"}
end

guard 'shotgun' do
  watch('server.rb')
end
