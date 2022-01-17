require "rack"
require_relative "app"

use Rack::Runtime
run App.new