#application environment

require 'bundler/setup'
Bundler.require(:default)

require_relative './library_cli/cli.rb'
require_relative './library_cli/api.rb'
require_relative './library_cli/library.rb'