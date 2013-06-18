require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

require 'rspec/expectations'
require "ruby-debug"

Capybara.app_host = 'http://jombaylocal.com/'
Capybara.run_server = false
Capybara.default_driver = :selenium
World(Capybara)