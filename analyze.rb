require "bundler/setup"
require "json"
require "pry"
require "goldmine"

filename = "2013-fall.json"
courses = JSON.parse(File.open(filename).read)

binding.pry