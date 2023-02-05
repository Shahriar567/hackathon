namespace :routes do
  all_routes = Rails.application.routes.routes
  require 'action_dispatch/routing/inspector'
  inspector = ActionDispatch::Routing::RoutesInspector.new(all_routes)
  # puts inspector.format(ActionDispatch::Routing::ConsoleFormatter.new, ENV['CONTROLLER'])
  puts inspector
end
