require 'headless'
require 'watir'
require_relative '../lib/watir/extensions/element/screenshot'

headless = Headless.new
headless.start

b = Watir::Browser.new :firefox
b.goto 'https://github.com/ansoni/watir-extensions-element-screenshot'
b.div(:id => "readme").screenshot("readme.png")

