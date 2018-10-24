require "sinatra"
# knows how to reload the page without having to stop the server
require "sinatra/contrib"
# we dont need to do control c as it will do it and it requires contrib to run
require "sinatra/reloader" if development?
require_relative "./controllers/post_controller.rb"

use Rack::Reloader
run PostController
